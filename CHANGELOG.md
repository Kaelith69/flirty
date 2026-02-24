# Changelog

All notable changes to Pluto are documented here.

Format loosely follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
Versioning follows [Semantic Versioning](https://semver.org/). Tone follows vibes.

---

## [1.0.0] — 2024-01-01

### 🎉 Initial Release — It works!

The app was born. It does the thing. Ship it.

#### Added
- 💘 **Cupid Mode** — Gemini generates romantic flirty pickup lines based on user input
- 🧠 **G Man Mode** — Gemini generates clever, high-intellect witty replies
- ⚡ **Mode toggle** — `SwitcherButton` lets you flip between Cupid and G Man instantly
- 🔄 **Loading indicator** — `CircularProgressIndicator` while Gemini is doing its thing
- 🛡️ **Error handling** — API errors and network failures surface as readable UI messages
- 📱 **Responsive layout** — Full-width response card that works on any screen size
- 🌑 **Dark theme** — Material 3 dark theme because eyes deserve respect
- 🔒 **Input cap** — 500-character limit on API requests to prevent unintentional abuse
- 🔑 **dotenv config** — API key loaded from `.env` file via `flutter_dotenv`
- 🌐 **Cross-platform** — Runs on Android, iOS, Web, Linux, macOS, and Windows

#### Tech stack
- Flutter 3.x / Dart 3.x
- Google Gemini 1.5 Flash REST API
- `http` for HTTP client
- `google_fonts` for Playfair Display and Roboto
- `switcher_button` for the mode toggle
- `flutter_dotenv` for config management

---

<!-- Future releases will be added above this line -->

## Unreleased

### In progress / planned
- Copy-to-clipboard on response card
- "Regenerate" button for new AI response
- Conversation history (local, session-scoped)
- More AI personas beyond Cupid and G Man
- Tone/temperature slider

---

*"The best time to plant a tree was 20 years ago. The second best time is to ship v1.0 today."*
