<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 900 200" width="900" height="200">
  <defs>
    <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#1c1b1f"/>
      <stop offset="100%" style="stop-color:#432e81"/>
    </linearGradient>
    <linearGradient id="txt" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#e040fb"/>
      <stop offset="100%" style="stop-color:#00e5ff"/>
    </linearGradient>
  </defs>
  <rect width="900" height="200" rx="18" fill="url(#bg)"/>
  <text x="42" y="90" font-size="52" opacity="0.18">💜</text>
  <text x="820" y="160" font-size="40" opacity="0.15">💫</text>
  <text x="780" y="50" font-size="30" opacity="0.12">✨</text>
  <text x="450" y="105" font-family="Georgia, serif" font-size="72" font-weight="900"
        text-anchor="middle" fill="url(#txt)" letter-spacing="6">PLUTO</text>
  <text x="450" y="148" font-family="Arial, sans-serif" font-size="18"
        text-anchor="middle" fill="#c8a8f0" letter-spacing="2">AI-Powered Flirty Reply Generator</text>
  <rect x="360" y="160" width="180" height="26" rx="13" fill="#432e81" opacity="0.7"/>
  <text x="450" y="178" font-family="Arial, sans-serif" font-size="12"
        text-anchor="middle" fill="#00e5ff">Powered by Gemini 1.5 Flash</text>
</svg>

# Pluto — AI Flirty Reply Generator

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Gemini API](https://img.shields.io/badge/Gemini-1.5_Flash-4285F4?logo=google&logoColor=white)](https://ai.google.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-blueviolet)](pubspec.yaml)
[![Platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey)](https://flutter.dev/multi-platform)

> **Pluto** is a Flutter application that uses Google's **Gemini 1.5 Flash** AI to generate
> charming flirty pickup lines *or* sharp, witty replies — toggled instantly with a single switch.

---

## 📑 Table of Contents

1. [Features](#-features)
2. [Architecture](#-architecture)
3. [Project Structure](#-project-structure)
4. [Setup & Installation](#-setup--installation)
5. [Usage](#-usage)
6. [Configuration](#-configuration)
7. [Tech Stack](#-tech-stack)
8. [Contributing](#-contributing)
9. [License](#-license)

---

## ✨ Features

| Feature | Description |
|---|---|
| 💘 **Cupid Mode** | Generates a romantic, flirty pickup line for any input message |
| 🧠 **G Man Mode** | Returns a clever, high-intellect reply |
| ⚡ **Real-time toggle** | Instantly switch between modes with a stylish `SwitcherButton` |
| 🔄 **Loading indicator** | Smooth `CircularProgressIndicator` while the AI thinks |
| 🛡️ **Error handling** | Gracefully surfaces API and network errors in the UI |
| 📱 **Responsive layout** | Full-width response area that adapts to any screen size |

---

## 🏗️ Architecture

```
Entry Point (main.dart)
    │
    └─► MyApp (MaterialApp + dark theme)
            │
            └─► HomeScreen (StatefulWidget — UI + state)
                    │
                    └─► ApiService (static — Gemini HTTP calls)
```

**Separation of concerns:**

- **`lib/main.dart`** — Bootstrap only: loads `.env`, then hands off to `MyApp`.
- **`lib/screens/home_screen.dart`** — All UI and local widget state. Calls `ApiService` but contains no HTTP logic.
- **`lib/services/api_service.dart`** — Single responsibility: build the Gemini prompt, make the HTTP request, parse the response, throw on error.
- **`lib/const.dart`** — Shared `TextStyle` helper used across widgets.

---

## 📂 Project Structure

```
flirty/
├── .env                     # API key (placeholder — replace before running)
├── .env.example             # Template for .env
├── analysis_options.yaml    # Dart lint configuration
├── pubspec.yaml             # Dependencies & asset registration
│
├── lib/
│   ├── main.dart            # App entry point
│   ├── const.dart           # Shared text styles
│   ├── screens/
│   │   └── home_screen.dart # Main UI screen
│   └── services/
│       └── api_service.dart # Gemini API integration
│
├── test/
│   └── widget_test.dart     # Widget smoke tests
│
├── android/                 # Android platform files
├── ios/                     # iOS platform files
├── web/                     # Web platform files
├── linux/                   # Linux platform files
├── macos/                   # macOS platform files
└── windows/                 # Windows platform files
```

---

## 🚀 Setup & Installation

### Prerequisites

| Tool | Version |
|---|---|
| Flutter | ≥ 3.0 |
| Dart | ≥ 3.0 |
| A Gemini API key | [Get one free](https://aistudio.google.com/) |

### 1 — Clone the repository

```bash
git clone https://github.com/Kaelith69/flirty.git
cd flirty
```

### 2 — Install dependencies

```bash
flutter pub get
```

### 3 — Configure your API key

```bash
# Copy the template
cp .env.example .env
```

Open `.env` and replace the placeholder:

```dotenv
API_KEY=AIzaSy...your_real_key_here
```

> 🔑 Get a **free** Gemini API key at <https://aistudio.google.com/>

### 4 — Run the app

```bash
flutter run
```

---

## 🎮 Usage

> ![Add a fun winking/flirting GIF here — e.g. from GIPHY — to break up the text and show personality!]

1. **Open** the app on your device or emulator.
2. **Toggle** the switch in the header:
   - ⬅️ **G MAN** — intelligent, witty reply
   - ➡️ **CUPID** — flirty, romantic pickup line
3. **Type** the message you received into the text field.
4. **Tap** the ↑ send button that appears.
5. **Read** the AI-generated reply in the response area.
6. Impress everyone. 😎

### Example

```
Input  : "You up?"
Mode   : CUPID
Output : "Only because the stars had to make room for someone as bright as you."
```

---

## ⚙️ Configuration

All runtime configuration lives in `.env`:

| Key | Description | Required |
|---|---|---|
| `API_KEY` | Google Gemini API key | ✅ Yes |

The file is loaded at startup via `flutter_dotenv`. If it is missing or the key is blank, the app
starts normally but API calls will fail gracefully with an error message shown in the UI.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| [Flutter](https://flutter.dev) | Cross-platform UI framework |
| [Dart](https://dart.dev) | Programming language |
| [Google Gemini 1.5 Flash](https://ai.google.dev) | Generative AI backend |
| [google_fonts](https://pub.dev/packages/google_fonts) | Playfair Display & Roboto fonts |
| [switcher_button](https://pub.dev/packages/switcher_button) | Animated mode toggle |
| [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) | Secure API key loading from `.env` |
| [http](https://pub.dev/packages/http) | HTTP client for Gemini REST API |

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you
would like to change.

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  Made with 💜 and way too much caffeine
  <br/><br/>
  <em>Why do programmers prefer dark mode?</em><br/>
  <strong>Because light attracts bugs. 🐛</strong>
</p>
