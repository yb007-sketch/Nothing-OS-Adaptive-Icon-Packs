# Nothing OS Adaptive Icon Packs (One UI 9.0 & Android 14+)

A suite of premium, minimalist **Nothing OS-style icon packs** engineered specifically for **Samsung One UI 9.0 (Android 17)** via Samsung Good Lock **Theme Park**, as well as all major Android launchers (Nova, Niagara, Lawnchair, Smart Launcher).

Built from a library of over **10,640+ themed apps**, this project provides three distinct aesthetic variants:

| Variant | Plate Background | Glyph Color | Aesthetic |
| :--- | :--- | :--- | :--- |
| **Nothing Pure White** | `#FFFFFF` (100% Solid) | `#111111` (Deep Charcoal Black) | Minimalist ceramic daylight aesthetic |
| **Nothing Pitch Black** | `#0D0D0D` (Pure AMOLED) | `#FFFFFF` (Crisp Clean White) | True pitch-black dark mode aesthetic |
| **Nothing Translucent** | Frosted Liquid Glass | Dynamic / Tinted | Iconic translucent Nothing glass plate |

---

## 📱 Features

- **100% Solid Backgrounds (No Translucent Leaks)**: Zero transparency in Pure White and Pitch Black editions. All 164 core launcher bitmaps (WhatsApp, Instagram, Snapchat, Settings, Google Maps, YouTube, etc.) and all 10,640+ XML vector drawables render with completely solid plates.
- **Unthemed App Backing (`iconback` & `iconmask`)**: Automatically frames unmapped apps, games, and web shortcuts in matching Nothing-style squircle plates scaled to 68%.
- **Samsung One UI 9.0 & Good Lock Theme Park Ready**: Fully parsed by Samsung Theme Park without duplicate alias conflicts or missing root activity errors.
- **Android 14 to Android 17 Support**: Cleanly packaged and cryptographically signed with Android V1, V2, and V3 signatures.
- **Built-in Scanner Tool**: Includes an integrated dashboard scanner to identify installed packages and export missing `appfilter.xml` component definitions.
- **100% Match on Standard Devices**: Includes 13 custom-decoded vector icons for regional banking, utilities, and lifestyle apps (Adrenox Connect, HMRC, TSB, JustPark, RingGo, PureGym, Cryptogram, etc.).

---

## 🎨 Design & Engineering Architecture

### 1. Vector Glyph Geometry & Aesthetics
Every icon is drafted on a **512×512** canvas centered within Nothing's signature squircle contour:
- **Stroke Weights**: Standardized between `12.0dp` and `16.0dp` with round line-caps (`round`) and joined corners (`round`) to match the Nothing OS 2.0 / 3.0 visual language.
- **Color Variables**: Linked dynamically through `@color/glyph_fg`, with `#f2111111` applied in the Pure White edition and `#f5ffffff` in the Pitch Black edition.

### 2. Eliminating Translucent Artifacts on Core Bitmaps
The base icon pack contained 164 pre-baked raster PNGs in `res/drawable-nodpi/` with semi-transparent frosted glass baked directly into their alpha channels. 

To achieve 100% solid opacity without losing fine edge anti-aliasing:
$$\text{glyph\_diff} = \max(0, \alpha_{\text{day}} - \alpha_{\text{plate}})$$
$$\text{glyph\_factor} = \text{clamp}\left(\frac{\text{glyph\_diff} - 10}{245 - \alpha_{\text{plate}} - 10}, 0.0, 1.0\right)$$
$$\text{Color}_{\text{out}} = \text{Color}_{\text{bg}} \times (1.0 - \text{glyph\_factor}) + \text{Color}_{\text{fg}} \times \text{glyph\_factor}$$

Using Pillow's C-accelerated `ImageChops` operators, all 164 bitmap icons were processed with sub-pixel fidelity:
- **Pure White**: Blended over solid `#FFFFFF` (`\alpha = 255`).
- **Pitch Black**: Blended over solid `#0D0D0D` (`\alpha = 255`).

### 3. Unthemed App Framing
To ensure web shortcuts and newly installed apps never display as raw un-themed squares, `appfilter.xml` was enhanced with:
```xml
<scale factor="0.68" />
<iconback img1="iconback" />
<iconmask img1="iconmask" />
<iconupon img1="iconupon" />
```
- `iconback.png`: Solid squircle backing plate (White or Black).
- `iconmask.png`: Squircle alpha-cutoff mask.
- `iconupon.png`: Transparent overlay.

---

## 📥 Downloads

Pre-built and signed APKs are available in the [apks/](./apks/) directory and under GitHub Releases:

- [Nothing.Pure.White.Icons.v0.6.apk](./apks/Nothing.Pure.White.Icons.v0.6.apk) (`com.sibtain.nothingpurewhiteicons`)
- [Nothing.Pitch.Black.Icons.v0.6.apk](./apks/Nothing.Pitch.Black.Icons.v0.6.apk) (`com.sibtain.nothingpitchblackicons`)
- [Nothing.Translucent.Icons.v0.6.apk](./apks/Nothing.Translucent.Icons.v0.6.apk) (`com.sibtain.nothingtranslucenticons`)

---

## 🛠️ How to Apply in Samsung Good Lock (Theme Park)

1. **Install the APKs**: Install the desired APK variant(s) on your Galaxy device.
2. **Open Good Lock**:
   - Launch **Good Lock** and tap **Theme Park**.
   - Navigate to the **Icon** tab at the bottom.
3. **Select Icon Pack**:
   - Tap **Create New** (or select your active theme).
   - Tap **Iconpack** at the top.
   - Choose **Nothing Pure White Icons**, **Nothing Pitch Black Icons**, or **Nothing Translucent Icons**.
4. **Compile & Apply**:
   - Tap the **Download / Save** button (arrow in top right).
   - Enter a name (e.g. `Nothing White`) and tap **OK**.
   - Tap the compiled theme and select **Apply**.

---

## 🔨 Building from Source

### Prerequisites
- Linux / macOS / WSL
- OpenJDK 21 LTS (`java`)
- Python 3.10+ with `Pillow` (`python3 -m pip install pillow`)
- [Apktool](https://apktool.org/) v3.0.3+
- [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer) v1.3.0+

### Build Pipeline
Run the all-in-one build and signing automation script:
```bash
python3 scripts/build_all_solid_packs.py
```
The script will:
1. Reconstruct vector drawables and inject custom app mappings.
2. Perform mathematical glyph extraction and plate replacement across all raster PNGs.
3. Generate updated `iconback`, `iconmask`, and adaptive launcher mipmaps.
4. Compile the APKs using `apktool b`.
5. Zipalign and sign with Android V1/V2/V3 signatures.

---

## 📂 Repository Layout

```
├── apks/                              # Ready-to-install signed APKs
│   ├── Nothing.Pure.White.Icons.v0.6.apk
│   ├── Nothing.Pitch.Black.Icons.v0.6.apk
│   └── Nothing.Translucent.Icons.v0.6.apk
├── scripts/                           # Build & generation pipeline
│   ├── build_all_solid_packs.py       # Full compilation and theming engine
│   ├── generate_13_vectors.py         # Custom vector glyph definitions
│   └── export_pngs.py                 # High-resolution PNG exporter
├── src/                               # Decompiled Android source tree
│   ├── AndroidManifest.xml
│   ├── apktool.yml
│   ├── assets/                        # appfilter.xml and drawable.xml
│   ├── res/                           # 10,640+ XML drawables & raster plates
│   └── smali/                         # Dashboard & scanner engine
└── README.md
```

---

## 🤝 Credits & Acknowledgements

- **Syed Sibtain** (`SyedSibtain9`): Creator of the original *Nothing Translucent Icons* aesthetic.
- **Yashwanth Bellum** (`yb007-sketch`): One UI 9.0 compatibility architecture, Pure White & Pitch Black mathematical extraction pipeline, Theme Park optimization, and missing app definitions.
- **Android Open Source Project & Nothing Technology Limited**: Inspiration for Nothing OS glyph design guidelines.
