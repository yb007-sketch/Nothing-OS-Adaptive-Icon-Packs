# Security Policy

## 🛡️ Supported Versions

We actively maintain and provide security and stability patches for the following versions:

| Version | Supported | Release Type |
| :--- | :---: | :--- |
| **`v0.6.x`** | ✅ Active | Nothing OS 5.0 Liquid Glass & Samsung One UI 9.0 Suite |
| **`< v0.6`** | ❌ End of Life | Legacy monolithic packs |

---

## 🔒 Security Architecture & Guarantees

All icon pack binaries published in this repository are subject to strict privacy and cryptographic integrity standards:

1. **Zero Network Permissions (`No Internet Access`)**:
   - The APK manifests contain **no** `android.permission.INTERNET` or `ACCESS_NETWORK_STATE` declarations.
   - Applications operate 100% offline and are physically incapable of network communication, data harvesting, or telemetry transmission.

2. **Cleartext Traffic Disabled**:
   - Built with `android:usesCleartextTraffic="false"` and `android:allowBackup="false"` to prevent local app state leakage.

3. **Cryptographic Signing (V1, V2 & V3)**:
   - Binaries are pre-aligned with Android `zipalign` and dual-signed under standard APK Signature Schemes (V1 JAR signature, V2 whole-file signature, and V3 Android 11+ key rotation scheme).

4. **100% Transparent Build Pipeline**:
   - All vector drawables, Pillow isolation algorithms, and build automation scripts are fully open-sourced in this repository. Anyone can audit or rebuild identical APKs directly using `scripts/build_all_solid_packs.py`.

---

## 🚨 Reporting a Security Vulnerability

If you discover a security issue, vulnerability, or unexpected behavior in any of the APKs or build scripts:

### Recommended: Private Vulnerability Reporting
Please **do not** disclose security vulnerabilities through public GitHub issues. Instead:
1. Navigate to the **[Security Advisories](https://github.com/yb007-sketch/Nothing-OS-Adaptive-Icon-Packs/security/advisories/new)** tab of this repository.
2. Click **"Report a vulnerability"** to submit a private, encrypted disclosure directly to the repository maintainers.

### What to Include in Your Report
To help us resolve the issue swiftly, please include:
- A description of the vulnerability and affected APK edition (`Translucent`, `Pure White`, or `Pitch Black`).
- Steps to reproduce or proof-of-concept (POC) files.
- Impact on Android system or launcher stability.

### Response Timelines & SLA
- **Initial Acknowledgment**: Within 48 hours of report submission.
- **Triage & Assessment**: Within 5 business days.
- **Patch Deployment**: Security fixes will be released as an immediate tagged hotfix release on GitHub.
