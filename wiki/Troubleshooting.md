# Troubleshooting

Something broke? This is the place. Breathe. Most Flutter problems have known solutions.

---

## Quick Diagnostic Checklist

Before anything else, run this:

```bash
flutter doctor -v
flutter clean
flutter pub get
flutter analyze
```

`flutter doctor -v` surfaces 90% of environment issues. `flutter clean` removes build artifacts
that sometimes get corrupted. These two commands have resolved more problems than any other
debugging session.

---

## Installation Issues

### `flutter: command not found`

Flutter SDK is not in your system PATH.

**Fix:**
1. Locate where you installed Flutter (e.g., `~/flutter`)
2. Add `export PATH="$PATH:~/flutter/bin"` to your shell config (`.bashrc`, `.zshrc`, etc.)
3. Restart your terminal

### `flutter pub get` fails

Usually a network issue or a corrupted pub cache.

**Fix:**
```bash
flutter clean
flutter pub cache repair
flutter pub get
```

### `sdk` constraint not satisfied

Your Flutter/Dart version is too old.

**Fix:** Update Flutter:
```bash
flutter upgrade
```

---

## API / Configuration Issues

### `API_KEY not found` or blank API key error

The `.env` file is missing, in the wrong location, or has the wrong key name.

**Check:**
```bash
ls -la .env           # should exist in the project root
cat .env              # should contain API_KEY=...
```

**Fix:**
```bash
cp .env.example .env
# then edit .env and add your real key
```

### `API_KEY=YOUR_KEY_HERE` (placeholder not replaced)

You copied the template but forgot to add your actual key.

**Fix:** Open `.env` and replace `YOUR_KEY_HERE` with your real Gemini API key from
[aistudio.google.com](https://aistudio.google.com).

### Response shows "Error: ..." in the UI

This usually means the API call failed. Common causes:

| Cause | How to check | Fix |
|---|---|---|
| Invalid API key | Check aistudio.google.com | Regenerate key |
| API quota exhausted | Check aistudio.google.com usage | Wait or upgrade quota |
| No internet connection | Ping google.com | Connect to internet |
| Gemini API outage | Check [status.cloud.google.com](https://status.cloud.google.com) | Wait for Google |

### Response is empty or malformed

The Gemini API occasionally returns unexpected response structures. This is rare with Gemini 1.5
Flash but can happen.

**Fix:** Tap send again — the model generates a new response each time. If it consistently
returns empty responses, your prompt may be triggering safety filters.

---

## Build Issues

### Android build fails

Run `flutter doctor` and check the Android section. Common fixes:

```bash
# Accept Android licenses
flutter doctor --android-licenses

# Clean and rebuild
flutter clean
flutter pub get
flutter build apk
```

If using Android Studio, make sure your SDK is at API level 21 or higher.

### iOS build fails (macOS only)

```bash
# Update CocoaPods
sudo gem install cocoapods
cd ios && pod install && cd ..
flutter clean
flutter build ios
```

Make sure Xcode is up to date (`xcode-select --install` if needed).

### Web build fails

```bash
flutter clean
flutter pub get
flutter build web
```

If you see CORS errors when running locally, they're expected for some assets — use
`flutter run -d chrome` instead of serving `build/web` directly.

### Desktop build fails

Desktop builds require platform-specific tooling. Run `flutter doctor -v` and address all
warnings for your platform:

- **Linux:** requires `clang`, `cmake`, `ninja-build`, `libgtk-3-dev`
- **macOS:** requires Xcode command line tools
- **Windows:** requires Visual Studio with C++ desktop development workload

---

## Runtime Issues

### Spinner spins forever (no response)

The API call is hanging. Possible causes:
- Network timeout
- Very slow connection
- Gemini API under heavy load

**Fix:** Kill and restart the app. If it consistently hangs, check your network connection and
Gemini API status.

### Toggle doesn't seem to change the response style

Make sure you're toggling **before** tapping send. The mode is read at the time you tap send,
not when you toggle. If you toggle after the request has already started, it won't affect the
in-flight request — only the next one.

### App crashes on startup

Almost always `.env` related on first run.

```bash
ls .env           # make sure it exists
cat .env          # make sure API_KEY= is in it
```

If the file exists and has the key, try:
```bash
flutter clean
flutter pub get
flutter run
```

---

## Tests Failing

```bash
flutter test --verbose
```

Check which test is failing and what the error is. If tests were passing before your changes,
use `git diff` to review what you changed.

If tests were already failing on a clean clone:
```bash
git log --oneline -10   # check recent commits
flutter doctor -v       # check your environment
```

---

## Still Stuck?

1. Check [GitHub Issues](https://github.com/Kaelith69/flirty/issues) — someone else may have
   hit the same problem
2. Open a new issue with:
   - Output of `flutter doctor -v`
   - The exact error message or behavior
   - What you already tried
3. We'll help when we can

---

*"The error message is usually telling you the answer. It just speaks in cursive sometimes."*
