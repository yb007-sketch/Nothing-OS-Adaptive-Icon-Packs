# Nothing OS 5.0 Translucent App Icons & Adaptive Packs
### *Translucent Liquid Glass • Pure White • Pitch Black*

A suite of minimalist **Nothing OS 5.0-based icon packs** engineered to match the signature **Translucent Liquid Glass** aesthetic introduced in **Nothing OS 5.0**, alongside solid **Pure White** and **Pitch Black** monochrome editions.

Built from an expansive library of over **10,640+ skinned applications**, this project is tailored for **Nothing OS 5.0** (Nothing Phone (1), Phone (2), Phone (2a), Phone (3a), and Phone (3)), while offering complete cross-platform support for **Samsung One UI 9.0 (Android 17)** via Good Lock Theme Park and all major custom Android launchers.

---

## 🎨 Three Distinct Aesthetic Variants

| Variant | Plate Background | Glyph Color | Aesthetic & Best Paired With |
| :--- | :--- | :--- | :--- |
| **Nothing Translucent** | Frosted Liquid Glass | Dynamic / Tinted | Matches the latest **Nothing OS 5.0 Translucent Glass** design language |
| **Nothing Pure White** | `#FFFFFF` (100% Solid) | `#111111` (Deep Charcoal) | Minimalist ceramic daylight look with zero background translucency |
| **Nothing Pitch Black** | `#0D0D0D` (Pure AMOLED) | `#FFFFFF` (Crisp Clean White) | True deep black dark mode with zero background translucency |

---

## 📱 Features

- **Designed for Nothing OS 5.0**: Built to seamlessly integrate with the Nothing Launcher and Nothing OS 5.0 customisation engine.
- **100% Solid Backgrounds (Zero Translucent Leaks in White & Black)**: All 164 core launcher bitmaps (WhatsApp, Instagram, Snapchat, Settings, Google Maps, YouTube, etc.) and all 10,640+ XML vector drawables render with completely solid plates in the White and Black editions.
- **Unthemed App Framing (`iconback` & `iconmask`)**: Automatically nests unmapped apps, games, and web shortcuts inside matching Nothing-style squircle plates scaled to 68%.
- **Samsung One UI 9.0 & Good Lock Theme Park Ready**: Native support with standalone unique package namespaces (`com.sibtain.nothingtranslucenticons`, `com.sibtain.nothingpurewhiteicons`, `com.sibtain.nothingpitchblackicons`) to avoid alias conflicts.
- **Android 14 through Android 17 Support**: Package-verified and signed with Android V1, V2, and V3 signatures.
- **Integrated Appfilter Scanner**: Includes an embedded dashboard tool to inspect installed applications and export missing `ComponentInfo` definitions.
- **100% Complete Regional Coverage**: Includes 13 custom-decoded vector icons for regional utilities, banking, and lifestyle apps (Adrenox Connect, HMRC, TSB, JustPark, RingGo, PureGym, Cryptogram, etc.).

---

## 📥 Downloads

Signed, ready-to-install APKs are located in the [apks/](./apks/) directory and under GitHub Releases:

- **[Nothing.Translucent.Icons.v0.6.apk](./apks/Nothing.Translucent.Icons.v0.6.apk)** (`com.sibtain.nothingtranslucenticons`)
- **[Nothing.Pure.White.Icons.v0.6.apk](./apks/Nothing.Pure.White.Icons.v0.6.apk)** (`com.sibtain.nothingpurewhiteicons`)
- **[Nothing.Pitch.Black.Icons.v0.6.apk](./apks/Nothing.Pitch.Black.Icons.v0.6.apk)** (`com.sibtain.nothingpitchblackicons`)

---

## 🛠️ How to Apply on Nothing OS 5.0 (Nothing Launcher)

1. **Install the APK**:
   - Download and install your preferred variant(s) (`Nothing.Translucent.Icons.v0.6.apk`, `Nothing.Pure.White.Icons.v0.6.apk`, or `Nothing.Pitch.Black.Icons.v0.6.apk`).
2. **Open Customisation**:
   - Long-press any empty space on your Nothing home screen.
   - Tap **Customisation** (or go to **Settings** → **Customisation**).
3. **Select Icon Pack**:
   - Tap the **Icon pack** section.
   - You will see the newly installed packs listed:
     - Select **Nothing Translucent Icons** for the liquid glass look.
     - Select **Nothing Pure White Icons** for the solid ceramic look.
     - Select **Nothing Pitch Black Icons** for the AMOLED dark look.
4. **Confirm & Apply**:
   - Tap the checkmark (`✓`) at the top-right to apply.
   - **Pro-Tip**: If you switch between icon packs or update an existing pack, tap **Default** in the Icon pack menu and then tap your chosen Nothing pack again to flush the Nothing Launcher's cached drawables.

---

## 🛠️ How to Apply in Samsung Good Lock (Theme Park)

1. **Install the APKs**: Install the desired APK variant(s) on your Galaxy device.
2. **Open Good Lock & Theme Park**:
   - Open **Good Lock** and tap the **Theme Park** module.
   - Navigate to the **Icon** tab at the bottom.
3. **Create / Edit Icon Theme**:
   - Tap **Create New** (or select your active icon theme to edit).
   - Tap **Iconpack** at the top.
   - Select **Nothing Translucent Icons**, **Nothing Pure White Icons**, or **Nothing Pitch Black Icons**.
4. **Compile & Apply**:
   - Tap the **Download / Save** icon in the top-right corner.
   - Enter a name (e.g. `Nothing Translucent OS 5`) and tap **OK**.
   - Tap the newly generated theme tile and select **Apply**.

---

## 🛠️ How to Apply on Other Launchers

- **Nova Launcher**: Go to *Nova Settings* → *Look & feel* → *Icon style* → *Icon pack* → Select your Nothing pack.
- **Niagara Launcher**: Go to *Niagara Settings* → *Look* → *Icon pack* → Select your Nothing pack.
- **Lawnchair**: Go to *Home Settings* → *General* → *Icon Style* → *Icon Pack*.
- **Smart Launcher**: Go to *Smart Launcher Settings* → *Global appearance* → *Icon pack*.

---

## 🎨 Design & Engineering Blueprint

### 1. Vector Glyph Geometry & Aesthetics
Every icon is drafted on a **512×512** canvas centered within Nothing's signature squircle contour:
- **Stroke Weights**: Standardized between `12.0dp` and `16.0dp` with round line-caps (`round`) and joined corners (`round`) adhering to the Nothing OS aesthetic.
- **Color Variables**: Linked dynamically through `@color/glyph_fg`, with `#f2111111` applied in Pure White, `#f5ffffff` in Pitch Black, and translucent liquid plate references in the Translucent edition.

### 2. Mathematical Extraction of Core Bitmaps
The base icon pack contained 164 pre-rendered raster PNGs in `res/drawable-nodpi/` with semi-transparent frosted glass baked directly into their alpha channels. 

To achieve 100% solid opacity without losing fine edge anti-aliasing:
$$\text{glyph\_diff} = \max(0, \alpha_{\text{day}} - \alpha_{\text{plate}})$$
$$\text{glyph\_factor} = \text{clamp}\left(\frac{\text{glyph\_diff} - 10}{245 - \alpha_{\text{plate}} - 10}, 0.0, 1.0\right)$$
$$\text{Color}_{\text{out}} = \text{Color}_{\text{bg}} \times (1.0 - \text{glyph\_factor}) + \text{Color}_{\text{fg}} \times \text{glyph\_factor}$$

Using Pillow's C-accelerated `ImageChops` operators, all 164 bitmap icons were processed with sub-pixel fidelity:
- **Pure White**: Blended over solid `#FFFFFF` (`\alpha = 255`).
- **Pitch Black**: Blended over solid `#0D0D0D` (`\alpha = 255`).

### 3. Unthemed App Framing
To ensure web shortcuts and newly installed apps never display as raw un-themed squares, `appfilter.xml` is configured with:
```xml
<scale factor="0.68" />
<iconback img1="iconback" />
<iconmask img1="iconmask" />
<iconupon img1="iconupon" />
```
- `iconback.png`: Solid squircle backing plate (White, Black, or Liquid Glass).
- `iconmask.png`: Squircle alpha-cutoff mask.
- `iconupon.png`: Transparent overlay.

---

## 🔨 Building from Source

### Prerequisites
- Linux / macOS / WSL
- OpenJDK 21 LTS (`java`)
- Python 3.10+ with `Pillow`
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
5. Zipalign and sign with Android V1/V2/V3 scheme signatures.

---

## 📂 Repository Layout

```
├── apks/                              # Ready-to-install signed APKs
│   ├── Nothing.Translucent.Icons.v0.6.apk
│   ├── Nothing.Pure.White.Icons.v0.6.apk
│   └── Nothing.Pitch.Black.Icons.v0.6.apk
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
- **Yashwanth Bellum** (`yb007-sketch`): Nothing OS 5.0 alignment, One UI 9.0 compatibility architecture, Pure White & Pitch Black mathematical extraction pipeline, Theme Park optimization, and missing app definitions.
- **Nothing Technology Limited**: Inspiration for Nothing OS 5.0 design guidelines and glyph aesthetics.
