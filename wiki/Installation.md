# Installation

Everything you need to get Pluto running, on every platform we support. Yes, including that
one you're about to ask about.

---

## Prerequisites

Before you do anything else, you need these:

| Tool | Minimum Version | Get it |
|---|---|---|
| Flutter SDK | 3.0.0 | [flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install) |
| Dart SDK | 3.0.0 | Bundled with Flutter — don't install separately |
| Git | any recent version | [git-scm.com](https://git-scm.com/) |
| Gemini API key | — | [aistudio.google.com](https://aistudio.google.com/) |

**Verify Flutter is installed:**

```bash
flutter --version
flutter doctor
```

`flutter doctor` will tell you if anything is missing for your target platform. Fix whatever it
complains about before proceeding. It's opinionated but usually right.

---

## Step 1 — Clone the Repository

```bash
git clone https://github.com/Kaelith69/flirty.git
cd flirty
```

---

## Step 2 — Install Dependencies

```bash
flutter pub get
```

This downloads everything in `pubspec.yaml`. You'll know it worked when it doesn't error.

---

## Step 3 — Configure Your API Key

The app needs a Gemini API key to talk to Google's AI. Get one free at
[aistudio.google.com](https://aistudio.google.com/) — no credit card required for the free tier.

```bash
cp .env.example .env
```

Open `.env` in any editor and replace the placeholder:

```dotenv
API_KEY=AIzaSy...your_real_key_here
```

> ⚠️ **Do not commit this file.** The `.gitignore` should already exclude `.env` but double-check
> before running `git add .`. A committed API key is a revoked API key waiting to happen.

---

## Step 4 — Run the App

### Android

Make sure an Android emulator is running or a device is connected:

```bash
flutter devices          # verify your device shows up
flutter run              # runs on the first available device
flutter run -d emulator  # specify target
```

For a physical Android device: enable **Developer Options** and **USB Debugging** in Settings,
then plug in via USB.

### iOS (macOS only)

Requires Xcode installed and a simulator running:

```bash
open -a Simulator        # start iOS Simulator
flutter run -d iPhone    # or whatever your simulator name is
```

For a physical iPhone: you'll need an Apple Developer account for code signing. Follow
[Flutter's iOS deployment docs](https://docs.flutter.dev/deployment/ios) for the full setup.

### Web

```bash
flutter run -d chrome
```

Requires Chrome installed. The app runs as a standard Flutter web app.

### Desktop (Linux / macOS / Windows)

```bash
# Linux
flutter run -d linux

# macOS
flutter run -d macos

# Windows
flutter run -d windows
```

Desktop builds may require additional platform-specific dependencies. Run `flutter doctor -v`
and address any warnings for your platform.

---

## Verifying the Installation

Run the test suite to make sure nothing is broken:

```bash
flutter test
```

And run the linter:

```bash
flutter analyze
```

Both should complete without errors. If they don't, check the [Troubleshooting](Troubleshooting.md)
page.

---

## Building for Release

### Android APK

```bash
flutter build apk --release
# Output: build/app/outputs/flutter-apk/app-release.apk
```

### Android App Bundle (Play Store)

```bash
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
# Output: build/web/
```

### Desktop

```bash
flutter build linux --release    # Linux
flutter build macos --release    # macOS
flutter build windows --release  # Windows
```

> 🔑 Remember: release builds will need your `.env` bundled or the API key configured via
> another mechanism. The `flutter_dotenv` approach works fine for development and sideloaded
> builds. For production distribution, consider more secure key management.

---

## Updating Dependencies

```bash
flutter pub upgrade           # upgrade to latest compatible versions
flutter pub upgrade --major-versions  # upgrade including major versions (breaking changes possible)
```

Check for outdated packages:

```bash
flutter pub outdated
```

---

## Troubleshooting Installation

See the dedicated [Troubleshooting](Troubleshooting.md) page for common issues.

Quick common fixes:

| Error | Fix |
|---|---|
| `flutter: command not found` | Flutter SDK not in PATH — re-run Flutter installer |
| `pub get` fails | Run `flutter clean` then `flutter pub get` again |
| `API_KEY not found` | Check your `.env` file exists and has the right key |
| iOS build fails | Run `flutter doctor` and fix Xcode/CocoaPods issues |
| Android build fails | Run `flutter doctor` and fix Android Studio/SDK issues |
