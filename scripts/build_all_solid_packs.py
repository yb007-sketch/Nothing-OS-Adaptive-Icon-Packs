import os
import shutil
import subprocess
import time
import xml.etree.ElementTree as ET
from PIL import Image, ImageChops

BASE_DIR = "/tmp/apk_base"
JAVA_BIN = os.path.expanduser("~/.local/android-tools/jre21/bin/java")
APKTOOL_JAR = os.path.expanduser("~/.local/android-tools/apktool.jar")
SIGNER_JAR = os.path.expanduser("~/.local/android-tools/uber-apk-signer.jar")
DEST_DIR = "/media/spicykiller/New Volume/Syncthing/Nothing Phone 3A/Download"
REPO_DIR = "/media/spicykiller/New Volume/Syncthing/Nothing Phone 3A/Asus Laptop/NothingTranslucentIcons"

from generate_13_vectors import GLYPHS

ALL_EXTRA_MAPPINGS = [
    # 13 missing apps from user scan
    ("ComponentInfo{com.mahindra.adrenox/com.mahindra.adrenox.requestaccess.activities.SplashActivity}", "ic_adrenox"),
    ("ComponentInfo{com.crypt.gram.puzz/com.unity3d.player.UnityPlayerActivity}", "ic_cryptogram"),
    ("ComponentInfo{com.hastingsdirect.mobile/com.digitaslbi.hastingsdirect.MainActivity}", "ic_hastings_direct"),
    ("ComponentInfo{uk.gov.hmrc.ptcalc/uk.gov.hmrc.ptcalc.presentation.splash.SplashActivity}", "ic_hmrc"),
    ("ComponentInfo{com.justpark.jp/com.justpark.feature.splash.SplashScreenActivity}", "ic_justpark"),
    ("ComponentInfo{com.lastwave.app/com.lastwave.app.MainActivityWhite}", "ic_lastwave"),
    ("ComponentInfo{com.mymahindra.Live/com.mymahindra.Live.activities.NewSplashScreenActivity}", "ic_mahindra_for_you"),
    ("ComponentInfo{uk.co.rac.roadside/uk.co.rac.roadside.MainActivity}", "ic_myrac"),
    ("ComponentInfo{com.pixel.gun3d/com.pixelgun.MessagingAndPrime31UnityPlayerActivity}", "ic_pixel_gun_3d"),
    ("ComponentInfo{com.puregym/crc645bc2e355d2967c5e.MainActivity}", "ic_puregym"),
    ("ComponentInfo{co.uk.ringgo.android/co.uk.ringgo.android.SplashScreenActivity}", "ic_ringgo"),
    ("ComponentInfo{uk.co.tsb.newmobilebank/uk.co.tsb.mobilebank.ui.LaunchActivity}", "ic_tsb"),
    ("ComponentInfo{com.zoho.assist/com.zoho.assist.app.mobile.ZAssistActivity}", "ic_zoho_assist"),
    
    # Self mappings for all 3 apps so scan has 0 unmatched
    ("ComponentInfo{com.sibtain.nothingpitchblackicons/com.sibtain.nothingtranslucenticons.MainActivity}", "ic_com_sibtain_nothingpitchblackicons"),
    ("ComponentInfo{com.sibtain.nothingpurewhiteicons/com.sibtain.nothingtranslucenticons.MainActivity}", "ic_com_sibtain_nothingpurewhiteicons"),
    ("ComponentInfo{com.sibtain.nothingtranslucenticons/com.sibtain.nothingtranslucenticons.MainActivity}", "ic_nothing_translucent"),
    
    # X / Twitter common activity mappings
    ("ComponentInfo{com.twitter.android/com.twitter.android.StartActivity}", "ic_x_twitter"),
    ("ComponentInfo{com.twitter.android/com.twitter.app.main.MainActivity}", "ic_x_twitter"),
    ("ComponentInfo{com.twitter.android/com.twitter.android.MainActivity}", "ic_x_twitter"),
    ("ComponentInfo{com.x.android/com.x.android.MainActivity}", "ic_x_twitter"),
    ("ComponentInfo{com.x.android/com.x.android.StartActivity}", "ic_x_twitter"),
]

def make_paths_xml(paths_def, color_ref):
    lines = []
    for p in paths_def:
        d = p["d"]
        if p.get("fill"):
            lines.append(f'                <path android:pathData="{d}" android:fillColor="{color_ref}" />')
        else:
            sw = p.get("stroke", 14)
            cap = "round" if p.get("round") else "square"
            lines.append(f'                <path android:pathData="{d}" android:strokeColor="{color_ref}" android:strokeWidth="{sw}.0" android:strokeLineCap="{cap}" android:strokeLineJoin="round" />')
    return "\n".join(lines)

def precompute_plate_assets():
    plate0 = Image.open(f"{BASE_DIR}/res/drawable-nodpi/ic_liquid_glass_plate_0.png")
    w, h = plate0.size
    a_plate = plate0.split()[3]
    
    # Solid mask with anti-aliased edge
    mask = a_plate.point(lambda p: 0 if p == 0 else (255 if p > 80 else int(p * 255.0 / 80.0)))
    
    # Pure white plate
    white_plate = Image.new("RGBA", (w, h), (255, 255, 255, 0))
    white_plate.putalpha(mask)
    
    # Pitch black plate
    black_plate = Image.new("RGBA", (w, h), (13, 13, 13, 0))
    black_plate.putalpha(mask)
    
    # Empty overlay
    empty_upon = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    
    # Squircle mask for unthemed icons (white rgb with mask alpha)
    icon_mask = Image.new("RGBA", (w, h), (255, 255, 255, 0))
    icon_mask.putalpha(mask)
    
    return plate0, a_plate, mask, white_plate, black_plate, empty_upon, icon_mask

def prepare_common_base(dest_dir):
    if os.path.exists(dest_dir):
        shutil.rmtree(dest_dir)
    print(f"Copying base to {dest_dir}...")
    shutil.copytree(BASE_DIR, dest_dir)
    
    # Add 13 vectors
    drawable_dir = f"{dest_dir}/res/drawable"
    for key, gdef in GLYPHS.items():
        paths_xml = make_paths_xml(gdef["paths"], "@color/glyph_fg")
        with open(f"{drawable_dir}/{key}.xml", "w") as f:
            f.write(f"""<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@drawable/ic_liquid_glass_plate_0" />
    <item>
        <vector android:height="512.0dp" android:width="512.0dp" android:viewportWidth="512.0" android:viewportHeight="512.0">
            <group>
{paths_xml}
            </group>
        </vector>
    </item>
</layer-list>""")

    # Add self drawables
    self_drawables = [
        "ic_com_sibtain_nothingpitchblackicons",
        "ic_com_sibtain_nothingpurewhiteicons",
        "ic_nothing_translucent",
        "ic_nothing_pure_white",
        "ic_nothing_pitch_black",
    ]
    for s_name in self_drawables:
        with open(f"{drawable_dir}/{s_name}.xml", "w") as f:
            f.write(f"""<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@drawable/ic_liquid_glass_plate_0" />
    <item>
        <vector android:height="512.0dp" android:width="512.0dp" android:viewportWidth="108.0" android:viewportHeight="108.0">
            <group>
                <path android:fillColor="@color/glyph_fg" android:pathData="M46,46m-18,0a18,18 0,1 1,36 0a18,18 0,1 1,-36 0" />
                <path android:fillColor="@color/glyph_fg" android:pathData="M60,60m-18,0a18,18 0,1 1,36 0a18,18 0,1 1,-36 0" />
                <path android:fillColor="#d71921" android:pathData="M68,38m-5,0a5,5 0,1 1,10 0a5,5 0,1 1,-10 0" />
            </group>
        </vector>
    </item>
</layer-list>""")

    # Update appfilter.xml and assets/appfilter.xml
    for af_path in [f"{dest_dir}/res/xml/appfilter.xml", f"{dest_dir}/assets/appfilter.xml"]:
        tree = ET.parse(af_path)
        root = tree.getroot()
        
        # Add scale, iconback, iconmask, iconupon at top if not present
        if root.find("scale") is None:
            root.insert(0, ET.Element("scale", {"factor": "0.68"}))
            root.insert(1, ET.Element("iconback", {"img1": "iconback"}))
            root.insert(2, ET.Element("iconmask", {"img1": "iconmask"}))
            root.insert(3, ET.Element("iconupon", {"img1": "iconupon"}))
            
        existing_comps = set()
        for item in root.findall("item"):
            c = item.get("component")
            if c:
                existing_comps.add(c)
                
        for comp, draw in ALL_EXTRA_MAPPINGS:
            if comp not in existing_comps:
                ET.SubElement(root, "item", {"component": comp, "drawable": draw})
                existing_comps.add(comp)
                
        tree.write(af_path, encoding="utf-8", xml_declaration=True)

    # Update drawable.xml
    for dr_path in [f"{dest_dir}/res/xml/drawable.xml", f"{dest_dir}/assets/drawable.xml"]:
        tree = ET.parse(dr_path)
        root = tree.getroot()
        existing_draws = set()
        for item in root.findall("item"):
            d = item.get("drawable")
            if d:
                existing_draws.add(d)
        for comp, draw in ALL_EXTRA_MAPPINGS:
            if draw not in existing_draws:
                ET.SubElement(root, "item", {"drawable": draw})
                existing_draws.add(draw)
        tree.write(dr_path, encoding="utf-8", xml_declaration=True)

    # Update version in apktool.yml
    yml_path = f"{dest_dir}/apktool.yml"
    with open(yml_path, "r") as f:
        yml_text = f.read()
    yml_text = yml_text.replace("versionName: 0.1", "versionName: '0.6'").replace("versionCode: 140", "versionCode: 150")
    with open(yml_path, "w") as f:
        f.write(yml_text)

def update_manifest(target_dir, pkg_name, app_label):
    mf_path = f"{target_dir}/AndroidManifest.xml"
    with open(mf_path, "r") as f:
        mf = f.read()
    mf = mf.replace('package="com.sibtain.nothingtranslucenticons"', f'package="{pkg_name}"')
    mf = mf.replace('com.sibtain.nothingtranslucenticons.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION', f'{pkg_name}.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION')
    mf = mf.replace('com.sibtain.nothingtranslucenticons.androidx-startup', f'{pkg_name}.androidx-startup')
    mf = mf.replace('android:allowBackup="true"', 'android:allowBackup="false" android:usesCleartextTraffic="false"')
    with open(mf_path, "w") as f:
        f.write(mf)

    strings_path = f"{target_dir}/res/values/strings.xml"
    with open(strings_path, "r") as f:
        st = f.read()
    st = st.replace('<string name="app_name">Nothing Translucent Icons</string>', f'<string name="app_name">{app_label}</string>')
    with open(strings_path, "w") as f:
        f.write(st)

def build_and_sign(source_dir, out_apk_name):
    unaligned = f"/tmp/{out_apk_name}_unaligned.apk"
    print(f"\n[BUILD] Compiling {out_apk_name} with apktool...")
    t0 = time.time()
    subprocess.run([JAVA_BIN, "-jar", APKTOOL_JAR, "b", source_dir, "-o", unaligned], check=True)
    print(f"Apktool compile completed in {time.time()-t0:.1f}s")
    
    signed_dir = "/tmp/signed_out"
    os.makedirs(signed_dir, exist_ok=True)
    print(f"[SIGN] Signing & zipaligning {out_apk_name}...")
    t0 = time.time()
    subprocess.run([JAVA_BIN, "-jar", SIGNER_JAR, "-a", unaligned, "-o", signed_dir, "--allowResign"], check=True)
    print(f"Signing completed in {time.time()-t0:.1f}s")
    
    final_signed = f"{signed_dir}/{out_apk_name}_unaligned-aligned-debugSigned.apk"
    target_dl = f"{DEST_DIR}/{out_apk_name}.apk"
    target_repo = f"{REPO_DIR}/{out_apk_name}.apk"
    shutil.copyfile(final_signed, target_dl)
    shutil.copyfile(final_signed, target_repo)
    print(f"[DEPLOY] Successfully saved to:\n  -> {target_dl}\n  -> {target_repo}")
    
    os.remove(unaligned)
    os.remove(final_signed)

print("Precomputing plate assets...")
plate0, a_plate, mask, white_plate, black_plate, empty_upon, icon_mask = precompute_plate_assets()
w, h = plate0.size

# ========================================================
# 1. BUILD NOTHING PURE WHITE ICONS
# ========================================================
print("\n" + "="*50)
print("BUILDING 1/3: Nothing Pure White Icons")
print("="*50)
dir_white = "/tmp/apk_white"
prepare_common_base(dir_white)
update_manifest(dir_white, "com.sibtain.nothingpurewhiteicons", "Nothing Pure White Icons")

# Convert all 164 PNGs for Pure White
nodpi_white = f"{dir_white}/res/drawable-nodpi"
night_nodpi_white = f"{dir_white}/res/drawable-night-nodpi"

png_names = sorted([f for f in os.listdir(nodpi_white) if f.endswith(".png")])
print(f"Converting {len(png_names)} PNGs to Solid Pure White...")

for name in png_names:
    if name.startswith("ic_liquid_glass_plate_") or name == "iconback.png":
        white_plate.save(f"{nodpi_white}/{name}")
        white_plate.save(f"{night_nodpi_white}/{name}")
    elif name == "iconmask.png":
        icon_mask.save(f"{nodpi_white}/{name}")
        icon_mask.save(f"{night_nodpi_white}/{name}")
    elif name == "iconupon.png":
        empty_upon.save(f"{nodpi_white}/{name}")
        empty_upon.save(f"{night_nodpi_white}/{name}")
    else:
        day_img = Image.open(f"{nodpi_white}/{name}")
        a_day = day_img.split()[3]
        diff = ImageChops.subtract(a_day, a_plate)
        diff_clean = diff.point(lambda p: 0 if p < 10 else int(min(255, (p - 10) * (255.0 / 120.0))))
        white_l = diff_clean.point(lambda p: int(255 - p * ((255 - 17) / 255.0)))
        white_icon = Image.merge("RGBA", (white_l, white_l, white_l, mask))
        white_icon.save(f"{nodpi_white}/{name}")
        white_icon.save(f"{night_nodpi_white}/{name}")

# Self icons in nodpi
for s_name in ["ic_com_sibtain_nothingpurewhiteicons.png", "ic_nothing_pure_white.png", "ic_com_sibtain_nothingpitchblackicons.png", "ic_nothing_pitch_black.png"]:
    white_plate.save(f"{nodpi_white}/{s_name}")
    white_plate.save(f"{night_nodpi_white}/{s_name}")

# Set glyph_fg color to deep black
for c_path in [f"{dir_white}/res/values/colors.xml", f"{dir_white}/res/values-night/colors.xml"]:
    with open(c_path, "r") as f:
        c_text = f.read()
    c_text = c_text.replace('<color name="glyph_fg">#f21a2022</color>', '<color name="glyph_fg">#f2111111</color>')
    c_text = c_text.replace('<color name="glyph_fg">#f5ecf0f2</color>', '<color name="glyph_fg">#f2111111</color>')
    with open(c_path, "w") as f:
        f.write(c_text)

# Adaptive launcher icon
with open(f"{dir_white}/res/drawable/ic_launcher_background.xml", "w") as f:
    f.write('<?xml version="1.0" encoding="utf-8"?>\n<color xmlns:android="http://schemas.android.com/apk/res/android" android:color="#ffffffff" />')
with open(f"{dir_white}/res/drawable/ic_launcher_foreground.xml", "w") as f:
    f.write('''<?xml version="1.0" encoding="utf-8"?>
<vector android:height="108.0dp" android:width="108.0dp" android:viewportWidth="108.0" android:viewportHeight="108.0"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <path android:fillColor="#33111111" android:pathData="M46,46m-18,0a18,18 0,1 1,36 0a18,18 0,1 1,-36 0" />
    <path android:fillColor="#bb111111" android:pathData="M60,60m-18,0a18,18 0,1 1,36 0a18,18 0,1 1,-36 0" />
    <path android:fillColor="#d71921" android:pathData="M68,38m-5,0a5,5 0,1 1,10 0a5,5 0,1 1,-10 0" />
</vector>''')

build_and_sign(dir_white, "Nothing.Pure.White.Icons.v0.6")
shutil.rmtree(dir_white)

# ========================================================
# 2. BUILD NOTHING PITCH BLACK ICONS
# ========================================================
print("\n" + "="*50)
print("BUILDING 2/3: Nothing Pitch Black Icons")
print("="*50)
dir_black = "/tmp/apk_black"
prepare_common_base(dir_black)
update_manifest(dir_black, "com.sibtain.nothingpitchblackicons", "Nothing Pitch Black Icons")

# Convert all 164 PNGs for Pitch Black
nodpi_black = f"{dir_black}/res/drawable-nodpi"
night_nodpi_black = f"{dir_black}/res/drawable-night-nodpi"

print(f"Converting {len(png_names)} PNGs to Solid Pitch Black...")
for name in png_names:
    if name.startswith("ic_liquid_glass_plate_") or name == "iconback.png":
        black_plate.save(f"{nodpi_black}/{name}")
        black_plate.save(f"{night_nodpi_black}/{name}")
    elif name == "iconmask.png":
        icon_mask.save(f"{nodpi_black}/{name}")
        icon_mask.save(f"{night_nodpi_black}/{name}")
    elif name == "iconupon.png":
        empty_upon.save(f"{nodpi_black}/{name}")
        empty_upon.save(f"{night_nodpi_black}/{name}")
    else:
        day_img = Image.open(f"{nodpi_black}/{name}")
        a_day = day_img.split()[3]
        diff = ImageChops.subtract(a_day, a_plate)
        diff_clean = diff.point(lambda p: 0 if p < 10 else int(min(255, (p - 10) * (255.0 / 120.0))))
        black_l = diff_clean.point(lambda p: int(13 + p * ((255 - 13) / 255.0)))
        black_icon = Image.merge("RGBA", (black_l, black_l, black_l, mask))
        black_icon.save(f"{nodpi_black}/{name}")
        black_icon.save(f"{night_nodpi_black}/{name}")

# Self icons in nodpi
for s_name in ["ic_com_sibtain_nothingpurewhiteicons.png", "ic_nothing_pure_white.png", "ic_com_sibtain_nothingpitchblackicons.png", "ic_nothing_pitch_black.png"]:
    black_plate.save(f"{nodpi_black}/{s_name}")
    black_plate.save(f"{night_nodpi_black}/{s_name}")

# Set glyph_fg color to crisp white
for c_path in [f"{dir_black}/res/values/colors.xml", f"{dir_black}/res/values-night/colors.xml"]:
    with open(c_path, "r") as f:
        c_text = f.read()
    c_text = c_text.replace('<color name="glyph_fg">#f21a2022</color>', '<color name="glyph_fg">#f5ffffff</color>')
    c_text = c_text.replace('<color name="glyph_fg">#f5ecf0f2</color>', '<color name="glyph_fg">#f5ffffff</color>')
    with open(c_path, "w") as f:
        f.write(c_text)

# Adaptive launcher icon
with open(f"{dir_black}/res/drawable/ic_launcher_background.xml", "w") as f:
    f.write('<?xml version="1.0" encoding="utf-8"?>\n<color xmlns:android="http://schemas.android.com/apk/res/android" android:color="#ff0d0d0d" />')
with open(f"{dir_black}/res/drawable/ic_launcher_foreground.xml", "w") as f:
    f.write('''<?xml version="1.0" encoding="utf-8"?>
<vector android:height="108.0dp" android:width="108.0dp" android:viewportWidth="108.0" android:viewportHeight="108.0"
  xmlns:android="http://schemas.android.com/apk/res/android">
    <path android:fillColor="#55ffffff" android:pathData="M46,46m-18,0a18,18 0,1 1,36 0a18,18 0,1 1,-36 0" />
    <path android:fillColor="#aaffffff" android:pathData="M60,60m-18,0a18,18 0,1 1,36 0a18,18 0,1 1,-36 0" />
    <path android:fillColor="#d71921" android:pathData="M68,38m-5,0a5,5 0,1 1,10 0a5,5 0,1 1,-10 0" />
</vector>''')

build_and_sign(dir_black, "Nothing.Pitch.Black.Icons.v0.6")
shutil.rmtree(dir_black)

# ========================================================
# 3. BUILD NOTHING TRANSLUCENT ICONS
# ========================================================
print("\n" + "="*50)
print("BUILDING 3/3: Nothing Translucent Icons")
print("="*50)
dir_trans = "/tmp/apk_translucent"
prepare_common_base(dir_trans)

# Unthemed plate setup for translucent
plate0.save(f"{dir_trans}/res/drawable-nodpi/iconback.png")
icon_mask.save(f"{dir_trans}/res/drawable-nodpi/iconmask.png")
empty_upon.save(f"{dir_trans}/res/drawable-nodpi/iconupon.png")

# Self icons
for s_name in ["ic_com_sibtain_nothingpurewhiteicons.png", "ic_nothing_pure_white.png", "ic_com_sibtain_nothingpitchblackicons.png", "ic_nothing_pitch_black.png"]:
    plate0.save(f"{dir_trans}/res/drawable-nodpi/{s_name}")

build_and_sign(dir_trans, "Nothing.Translucent.Icons.v0.6")
shutil.rmtree(dir_trans)

print("\n" + "="*50)
print("ALL 3 APKs SUCCESSFULLY BUILT AND DEPLOYED!")
print("="*50)
