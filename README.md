<!-- Hero Banner -->
<p align="center">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 900 220" width="900" height="220">
  <defs>
    <linearGradient id="heroBg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#0d0d1a"/>
      <stop offset="50%" style="stop-color:#1e1040"/>
      <stop offset="100%" style="stop-color:#0c1a2e"/>
    </linearGradient>
    <linearGradient id="heroTitle" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#7C3AED"/>
      <stop offset="50%" style="stop-color:#a78bfa"/>
      <stop offset="100%" style="stop-color:#06B6D4"/>
    </linearGradient>
    <linearGradient id="accentLine" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#7C3AED;stop-opacity:0"/>
      <stop offset="50%" style="stop-color:#06B6D4"/>
      <stop offset="100%" style="stop-color:#7C3AED;stop-opacity:0"/>
    </linearGradient>
    <filter id="glow">
      <feGaussianBlur stdDeviation="3" result="blur"/>
      <feMerge><feMergeNode in="blur"/><feMergeNode in="SourceGraphic"/></feMerge>
    </filter>
  </defs>
  <rect width="900" height="220" rx="16" fill="url(#heroBg)"/>
  <!-- decorative orbits -->
  <circle cx="80" cy="110" r="55" fill="none" stroke="#7C3AED" stroke-width="0.5" opacity="0.3"/>
  <circle cx="80" cy="110" r="35" fill="none" stroke="#06B6D4" stroke-width="0.5" opacity="0.2"/>
  <circle cx="820" cy="110" r="55" fill="none" stroke="#06B6D4" stroke-width="0.5" opacity="0.3"/>
  <circle cx="820" cy="110" r="35" fill="none" stroke="#7C3AED" stroke-width="0.5" opacity="0.2"/>
  <!-- stars -->
  <circle cx="160" cy="30" r="1.5" fill="#06B6D4" opacity="0.6"/>
  <circle cx="740" cy="45" r="1" fill="#a78bfa" opacity="0.7"/>
  <circle cx="500" cy="20" r="1.5" fill="#06B6D4" opacity="0.5"/>
  <circle cx="300" cy="190" r="1" fill="#7C3AED" opacity="0.6"/>
  <circle cx="620" cy="195" r="1.5" fill="#06B6D4" opacity="0.5"/>
  <!-- mode pills -->
  <rect x="260" y="35" width="110" height="28" rx="14" fill="#7C3AED" opacity="0.25"/>
  <text x="315" y="54" font-family="Arial, sans-serif" font-size="12" text-anchor="middle" fill="#a78bfa">💘 CUPID</text>
  <rect x="530" y="35" width="110" height="28" rx="14" fill="#06B6D4" opacity="0.2"/>
  <text x="585" y="54" font-family="Arial, sans-serif" font-size="12" text-anchor="middle" fill="#67e8f9">🧠 G MAN</text>
  <!-- main title -->
  <text x="450" y="125" font-family="Georgia, serif" font-size="80" font-weight="900"
        text-anchor="middle" fill="url(#heroTitle)" letter-spacing="8" filter="url(#glow)">PLUTO</text>
  <!-- accent line -->
  <line x1="200" y1="140" x2="700" y2="140" stroke="url(#accentLine)" stroke-width="1.5"/>
  <!-- subtitle -->
  <text x="450" y="168" font-family="Arial, sans-serif" font-size="16"
        text-anchor="middle" fill="#94a3b8" letter-spacing="3">AI-POWERED REPLY GENERATOR</text>
  <!-- bottom badge -->
  <rect x="355" y="183" width="190" height="24" rx="12" fill="#1e1040" stroke="#7C3AED" stroke-width="0.8"/>
  <text x="450" y="199" font-family="Arial, sans-serif" font-size="11"
        text-anchor="middle" fill="#06B6D4" letter-spacing="1">✦ Powered by Gemini 1.5 Flash ✦</text>
</svg>
</p>

# Pluto — AI Reply Generator

> You know that moment when someone texts you something and your brain just... flatlines?  
> Yeah. Pluto fixes that. It uses Google's **Gemini 1.5 Flash** to generate either a silky smooth
> flirty pickup line **or** a razor-sharp witty comeback — in under two seconds.  
> One switch. Two vibes. Zero social awkwardness. Probably.

---

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Gemini API](https://img.shields.io/badge/Gemini-1.5_Flash-4285F4?logo=google&logoColor=white)](https://ai.google.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-1.0.0-7C3AED)](https://github.com/Kaelith69/flirty/releases)
[![Platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-06B6D4)](https://flutter.dev/multi-platform)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## 🎬 Live Demo

> Place demo GIF here: `assets/demo.gif`

![Demo](assets/demo.gif)

> **What the GIF should show:**
> 1. App launching on a dark-themed screen
> 2. User typing a message into the input field
> 3. Toggle switching between 💘 Cupid and 🧠 G Man modes
> 4. The send button appearing as text is entered
> 5. Loading spinner while Gemini processes
> 6. AI response appearing in the response card

---

## 🌐 System Overview

Pluto is a **Flutter cross-platform app** with exactly one job: take a message, feed it to the
Gemini AI with the right personality prompt, and return something that will either make someone
smile or make them question their life choices. The architecture is beautifully simple — basically
three layers and a `.env` file standing between you and peak social performance.

**Platforms supported:** Android · iOS · Web · Linux · macOS · Windows  
**AI backend:** Google Gemini 1.5 Flash (REST API)  
**State management:** Local `StatefulWidget` (no overkill providers here, just vibes and setState)

---

## ✨ Features

| Feature | What it actually does |
|---|---|
| 💘 **Cupid Mode** | Sends a flirty-framed prompt to Gemini, returns a romantic pickup line |
| 🧠 **G Man Mode** | Sends a wit-framed prompt, returns a high-intellect clever reply |
| ⚡ **Instant toggle** | Flips between modes live with a `SwitcherButton` — no restart needed |
| 🔄 **Loading indicator** | `CircularProgressIndicator` so you know the AI is thinking, not ghosting |
| 🛡️ **Error handling** | If the API fumbles, the UI tells you politely instead of silently dying |
| 📱 **Responsive layout** | Full-width response card that doesn't care what screen size you're on |
| 🔒 **Input cap** | 500-character limit on API requests — prevents accidental novel submissions |
| 🌑 **Dark theme** | Because staring at white screens at night is a war crime |

---

## 🗺️ Capability Visualization

<p align="center">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 760 320" width="760" height="320">
  <defs>
    <linearGradient id="capBg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#0f0f1a"/>
      <stop offset="100%" style="stop-color:#1a0f2e"/>
    </linearGradient>
    <linearGradient id="cupidBar" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#7C3AED"/>
      <stop offset="100%" style="stop-color:#a78bfa"/>
    </linearGradient>
    <linearGradient id="gmanBar" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#2563EB"/>
      <stop offset="100%" style="stop-color:#06B6D4"/>
    </linearGradient>
  </defs>
  <rect width="760" height="320" rx="14" fill="url(#capBg)" stroke="#7C3AED" stroke-width="0.5"/>
  <text x="380" y="36" font-family="Arial, sans-serif" font-size="15" font-weight="bold"
        text-anchor="middle" fill="#e2e8f0">CAPABILITY GRAPH</text>
  <line x1="30" y1="44" x2="730" y2="44" stroke="#7C3AED" stroke-width="0.5" opacity="0.4"/>

  <!-- Labels -->
  <text x="30" y="82"  font-family="Arial, sans-serif" font-size="12" fill="#94a3b8">Romantic Charm</text>
  <text x="30" y="122" font-family="Arial, sans-serif" font-size="12" fill="#94a3b8">Wit &amp; Intellect</text>
  <text x="30" y="162" font-family="Arial, sans-serif" font-size="12" fill="#94a3b8">Response Speed</text>
  <text x="30" y="202" font-family="Arial, sans-serif" font-size="12" fill="#94a3b8">Error Recovery</text>
  <text x="30" y="242" font-family="Arial, sans-serif" font-size="12" fill="#94a3b8">Platform Coverage</text>
  <text x="30" y="282" font-family="Arial, sans-serif" font-size="12" fill="#94a3b8">Input Flexibility</text>

  <!-- Cupid bars -->
  <rect x="180" y="64"  width="340" height="18" rx="9" fill="url(#cupidBar)" opacity="0.9"/>
  <rect x="180" y="104" width="160" height="18" rx="9" fill="url(#cupidBar)" opacity="0.5"/>
  <rect x="180" y="144" width="280" height="18" rx="9" fill="url(#cupidBar)" opacity="0.9"/>
  <rect x="180" y="184" width="300" height="18" rx="9" fill="url(#cupidBar)" opacity="0.9"/>
  <rect x="180" y="224" width="320" height="18" rx="9" fill="url(#cupidBar)" opacity="0.9"/>
  <rect x="180" y="264" width="300" height="18" rx="9" fill="url(#cupidBar)" opacity="0.9"/>

  <!-- G Man bars -->
  <rect x="180" y="64"  width="80"  height="18" rx="9" fill="url(#gmanBar)" opacity="0.7"/>
  <rect x="180" y="104" width="360" height="18" rx="9" fill="url(#gmanBar)" opacity="0.9"/>
  <rect x="180" y="144" width="280" height="18" rx="9" fill="url(#gmanBar)" opacity="0.9"/>
  <rect x="180" y="184" width="300" height="18" rx="9" fill="url(#gmanBar)" opacity="0.9"/>
  <rect x="180" y="224" width="320" height="18" rx="9" fill="url(#gmanBar)" opacity="0.9"/>
  <rect x="180" y="264" width="300" height="18" rx="9" fill="url(#gmanBar)" opacity="0.9"/>

  <!-- Legend -->
  <rect x="520" y="270" width="14" height="14" rx="3" fill="url(#cupidBar)"/>
  <text x="540" y="282" font-family="Arial, sans-serif" font-size="11" fill="#a78bfa">💘 Cupid Mode</text>
  <rect x="620" y="270" width="14" height="14" rx="3" fill="url(#gmanBar)"/>
  <text x="640" y="282" font-family="Arial, sans-serif" font-size="11" fill="#67e8f9">🧠 G Man Mode</text>
</svg>
</p>

---

## 🏗️ Architecture Diagram

<p align="center">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 760 380" width="760" height="380">
  <defs>
    <linearGradient id="archBg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#0f0f1a"/>
      <stop offset="100%" style="stop-color:#1a0f2e"/>
    </linearGradient>
    <linearGradient id="nodeGrad" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#1e1040"/>
      <stop offset="100%" style="stop-color:#0c1a2e"/>
    </linearGradient>
    <linearGradient id="extGrad" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#1c2a1c"/>
      <stop offset="100%" style="stop-color:#0a1a0a"/>
    </linearGradient>
  </defs>
  <rect width="760" height="380" rx="14" fill="url(#archBg)" stroke="#7C3AED" stroke-width="0.5"/>
  <text x="380" y="32" font-family="Arial, sans-serif" font-size="15" font-weight="bold"
        text-anchor="middle" fill="#e2e8f0">ARCHITECTURE DIAGRAM</text>
  <line x1="30" y1="42" x2="730" y2="42" stroke="#7C3AED" stroke-width="0.5" opacity="0.4"/>

  <!-- main.dart -->
  <rect x="280" y="58" width="200" height="52" rx="10" fill="url(#nodeGrad)" stroke="#7C3AED" stroke-width="1.5"/>
  <text x="380" y="80" font-family="monospace" font-size="13" font-weight="bold" text-anchor="middle" fill="#a78bfa">main.dart</text>
  <text x="380" y="98" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">loads .env → bootstrap</text>

  <!-- arrow down -->
  <line x1="380" y1="110" x2="380" y2="138" stroke="#7C3AED" stroke-width="1.5" stroke-dasharray="4,2"/>
  <polygon points="375,135 385,135 380,145" fill="#7C3AED"/>

  <!-- MyApp -->
  <rect x="270" y="148" width="220" height="52" rx="10" fill="url(#nodeGrad)" stroke="#2563EB" stroke-width="1.5"/>
  <text x="380" y="170" font-family="monospace" font-size="13" font-weight="bold" text-anchor="middle" fill="#60a5fa">MyApp</text>
  <text x="380" y="188" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">MaterialApp · dark theme · routing</text>

  <!-- arrow down -->
  <line x1="380" y1="200" x2="380" y2="228" stroke="#2563EB" stroke-width="1.5" stroke-dasharray="4,2"/>
  <polygon points="375,225 385,225 380,235" fill="#2563EB"/>

  <!-- HomeScreen -->
  <rect x="240" y="238" width="280" height="52" rx="10" fill="url(#nodeGrad)" stroke="#06B6D4" stroke-width="1.5"/>
  <text x="380" y="260" font-family="monospace" font-size="13" font-weight="bold" text-anchor="middle" fill="#67e8f9">HomeScreen</text>
  <text x="380" y="278" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">StatefulWidget · UI state · toggle · input</text>

  <!-- arrow down to ApiService -->
  <line x1="380" y1="290" x2="380" y2="318" stroke="#06B6D4" stroke-width="1.5" stroke-dasharray="4,2"/>
  <polygon points="375,315 385,315 380,325" fill="#06B6D4"/>

  <!-- ApiService -->
  <rect x="260" y="328" width="240" height="36" rx="10" fill="url(#nodeGrad)" stroke="#10b981" stroke-width="1.5"/>
  <text x="380" y="352" font-family="monospace" font-size="13" font-weight="bold" text-anchor="middle" fill="#34d399">ApiService</text>

  <!-- arrow right to Gemini -->
  <line x1="500" y1="346" x2="560" y2="346" stroke="#10b981" stroke-width="1.5" stroke-dasharray="4,2"/>
  <polygon points="557,341 557,351 567,346" fill="#10b981"/>

  <!-- Gemini box -->
  <rect x="567" y="322" width="160" height="48" rx="10" fill="url(#extGrad)" stroke="#10b981" stroke-width="1.2"/>
  <text x="647" y="342" font-family="Arial, sans-serif" font-size="11" font-weight="bold" text-anchor="middle" fill="#34d399">Gemini 1.5 Flash</text>
  <text x="647" y="360" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">REST API · Google AI</text>

  <!-- const.dart side node -->
  <rect x="30" y="238" width="140" height="52" rx="10" fill="url(#nodeGrad)" stroke="#7C3AED" stroke-width="1" stroke-dasharray="5,3"/>
  <text x="100" y="260" font-family="monospace" font-size="11" font-weight="bold" text-anchor="middle" fill="#a78bfa">const.dart</text>
  <text x="100" y="278" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">shared TextStyle helper</text>
  <line x1="240" y1="264" x2="170" y2="264" stroke="#7C3AED" stroke-width="1" stroke-dasharray="3,3" opacity="0.6"/>
</svg>
</p>

---

## 🌊 Data Flow

<p align="center">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 760 200" width="760" height="200">
  <defs>
    <linearGradient id="flowBg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#0f0f1a"/>
      <stop offset="100%" style="stop-color:#1a0f2e"/>
    </linearGradient>
    <linearGradient id="flowLine" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#7C3AED"/>
      <stop offset="50%" style="stop-color:#06B6D4"/>
      <stop offset="100%" style="stop-color:#10b981"/>
    </linearGradient>
  </defs>
  <rect width="760" height="200" rx="14" fill="url(#flowBg)" stroke="#7C3AED" stroke-width="0.5"/>
  <text x="380" y="28" font-family="Arial, sans-serif" font-size="14" font-weight="bold"
        text-anchor="middle" fill="#e2e8f0">DATA FLOW</text>

  <!-- Step nodes -->
  <rect x="18"  y="60" width="100" height="70" rx="10" fill="#1e1040" stroke="#7C3AED" stroke-width="1.2"/>
  <text x="68"  y="91" font-family="Arial, sans-serif" font-size="10" font-weight="bold" text-anchor="middle" fill="#a78bfa">User</text>
  <text x="68"  y="107" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">types message</text>
  <text x="68"  y="121" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">+ picks mode</text>

  <rect x="148" y="60" width="100" height="70" rx="10" fill="#1e1040" stroke="#2563EB" stroke-width="1.2"/>
  <text x="198" y="91" font-family="Arial, sans-serif" font-size="10" font-weight="bold" text-anchor="middle" fill="#60a5fa">HomeScreen</text>
  <text x="198" y="107" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">validates input</text>
  <text x="198" y="121" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">shows spinner</text>

  <rect x="278" y="60" width="100" height="70" rx="10" fill="#1e1040" stroke="#06B6D4" stroke-width="1.2"/>
  <text x="328" y="91" font-family="Arial, sans-serif" font-size="10" font-weight="bold" text-anchor="middle" fill="#67e8f9">ApiService</text>
  <text x="328" y="107" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">builds prompt</text>
  <text x="328" y="121" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">HTTP POST</text>

  <rect x="408" y="60" width="110" height="70" rx="10" fill="#1e1040" stroke="#10b981" stroke-width="1.2"/>
  <text x="463" y="84" font-family="Arial, sans-serif" font-size="10" font-weight="bold" text-anchor="middle" fill="#34d399">Gemini API</text>
  <text x="463" y="100" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">1.5 Flash model</text>
  <text x="463" y="114" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">generates reply</text>
  <text x="463" y="128" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">returns JSON</text>

  <rect x="548" y="60" width="100" height="70" rx="10" fill="#1e1040" stroke="#06B6D4" stroke-width="1.2"/>
  <text x="598" y="91" font-family="Arial, sans-serif" font-size="10" font-weight="bold" text-anchor="middle" fill="#67e8f9">Parse JSON</text>
  <text x="598" y="107" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">extract text</text>
  <text x="598" y="121" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">from candidates</text>

  <rect x="668" y="60" width="82" height="70" rx="10" fill="#1e1040" stroke="#7C3AED" stroke-width="1.2"/>
  <text x="709" y="91" font-family="Arial, sans-serif" font-size="10" font-weight="bold" text-anchor="middle" fill="#a78bfa">Render</text>
  <text x="709" y="107" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">display reply</text>
  <text x="709" y="121" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#64748b">in UI card</text>

  <!-- flow arrows -->
  <line x1="118" y1="95" x2="145" y2="95" stroke="#7C3AED" stroke-width="1.5"/>
  <polygon points="142,91 142,99 150,95" fill="#7C3AED"/>
  <line x1="248" y1="95" x2="275" y2="95" stroke="#2563EB" stroke-width="1.5"/>
  <polygon points="272,91 272,99 280,95" fill="#2563EB"/>
  <line x1="378" y1="95" x2="405" y2="95" stroke="#06B6D4" stroke-width="1.5"/>
  <polygon points="402,91 402,99 410,95" fill="#06B6D4"/>
  <line x1="518" y1="95" x2="545" y2="95" stroke="#10b981" stroke-width="1.5"/>
  <polygon points="542,91 542,99 550,95" fill="#10b981"/>
  <line x1="648" y1="95" x2="665" y2="95" stroke="#06B6D4" stroke-width="1.5"/>
  <polygon points="662,91 662,99 670,95" fill="#06B6D4"/>

  <!-- return path -->
  <path d="M 750 150 Q 750 175 380 175 Q 68 175 68 150" stroke="#7C3AED" stroke-width="1" fill="none" stroke-dasharray="4,3" opacity="0.5"/>
  <polygon points="63,147 73,147 68,140" fill="#7C3AED" opacity="0.5"/>
  <text x="380" y="170" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#7C3AED" opacity="0.7">response returned to UI</text>
</svg>
</p>

---

## 🚀 Installation

### Prerequisites

| Tool | Minimum Version | Where to get it |
|---|---|---|
| Flutter | 3.0 | [flutter.dev](https://flutter.dev/docs/get-started/install) |
| Dart | 3.0 | Bundled with Flutter |
| Gemini API key | — | [aistudio.google.com](https://aistudio.google.com/) (free tier available) |

### Step 1 — Clone

```bash
git clone https://github.com/Kaelith69/flirty.git
cd flirty
```

### Step 2 — Install dependencies

```bash
flutter pub get
```

### Step 3 — Configure API key

```bash
cp .env.example .env
```

Open `.env` and drop your key in:

```dotenv
API_KEY=AIzaSy...your_real_key_here
```

> 🔑 The API key is free on Google AI Studio's generous free tier. No credit card required for
> reasonable usage. Yes, really.

### Step 4 — Run

```bash
# Mobile / emulator
flutter run

# Web
flutter run -d chrome

# Specific device
flutter devices          # list available
flutter run -d <device>
```

---

## 🎮 Usage

1. **Open** the app.
2. **Toggle** the switch at the top:
   - ⬅️ **G MAN** — the AI puts on a monocle and delivers something clever
   - ➡️ **CUPID** — the AI shoots its shot for you
3. **Type** the message you want to respond to.
4. **Tap** the ↑ send button (appears once you've typed something — no accidental blank submissions).
5. **Read** the AI's reply in the response card.
6. **Copy, use, profit** 😎

### Example exchange

```
Input  : "You up?"
Mode   : 💘 CUPID
Output : "Only because the stars had to make room for someone as bright as you."

Input  : "What's the meaning of life?"
Mode   : 🧠 G MAN
Output : "42, but the real answer is you're asking the wrong question."
```

---

## 📂 Project Structure

```
flirty/
├── .env                     # Your API key lives here (gitignored)
├── .env.example             # Template — safe to commit
├── analysis_options.yaml    # Dart lint rules
├── pubspec.yaml             # Dependencies + asset registration
│
├── lib/
│   ├── main.dart            # Boots the app, loads .env
│   ├── const.dart           # Shared TextStyle helper (txtstyle)
│   ├── screens/
│   │   └── home_screen.dart # The whole UI + state machine
│   └── services/
│       └── api_service.dart # HTTP → Gemini → parsed text
│
├── test/
│   └── widget_test.dart     # Widget smoke tests
│
├── android/                 # Android platform scaffolding
├── ios/                     # iOS platform scaffolding
├── web/                     # Web platform scaffolding
├── linux/                   # Linux platform scaffolding
├── macos/                   # macOS platform scaffolding
└── windows/                 # Windows platform scaffolding
```

---

## 📊 Performance Stats

<p align="center">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 760 200" width="760" height="200">
  <defs>
    <linearGradient id="statsBg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#0f0f1a"/>
      <stop offset="100%" style="stop-color:#1a0f2e"/>
    </linearGradient>
  </defs>
  <rect width="760" height="200" rx="14" fill="url(#statsBg)" stroke="#7C3AED" stroke-width="0.5"/>
  <text x="380" y="30" font-family="Arial, sans-serif" font-size="14" font-weight="bold"
        text-anchor="middle" fill="#e2e8f0">PERFORMANCE &amp; STATS</text>
  <line x1="30" y1="40" x2="730" y2="40" stroke="#7C3AED" stroke-width="0.5" opacity="0.4"/>

  <!-- stat cards -->
  <rect x="30"  y="55" width="130" height="120" rx="12" fill="#1e1040" stroke="#7C3AED" stroke-width="1"/>
  <text x="95"  y="100" font-family="Arial, sans-serif" font-size="28" font-weight="bold" text-anchor="middle" fill="#a78bfa">~2s</text>
  <text x="95"  y="120" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">Avg. response</text>
  <text x="95"  y="134" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">time (Gemini)</text>
  <text x="95"  y="155" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#7C3AED">LATENCY</text>

  <rect x="178" y="55" width="130" height="120" rx="12" fill="#1e1040" stroke="#2563EB" stroke-width="1"/>
  <text x="243" y="100" font-family="Arial, sans-serif" font-size="28" font-weight="bold" text-anchor="middle" fill="#60a5fa">500</text>
  <text x="243" y="120" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">Max chars per</text>
  <text x="243" y="134" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">API request</text>
  <text x="243" y="155" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#2563EB">INPUT CAP</text>

  <rect x="326" y="55" width="130" height="120" rx="12" fill="#1e1040" stroke="#06B6D4" stroke-width="1"/>
  <text x="391" y="100" font-family="Arial, sans-serif" font-size="28" font-weight="bold" text-anchor="middle" fill="#67e8f9">6</text>
  <text x="391" y="120" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">Platforms</text>
  <text x="391" y="134" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">supported</text>
  <text x="391" y="155" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#06B6D4">REACH</text>

  <rect x="474" y="55" width="130" height="120" rx="12" fill="#1e1040" stroke="#10b981" stroke-width="1"/>
  <text x="539" y="100" font-family="Arial, sans-serif" font-size="28" font-weight="bold" text-anchor="middle" fill="#34d399">2</text>
  <text x="539" y="120" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">AI personas</text>
  <text x="539" y="134" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">(Cupid / G Man)</text>
  <text x="539" y="155" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#10b981">MODES</text>

  <rect x="622" y="55" width="108" height="120" rx="12" fill="#1e1040" stroke="#7C3AED" stroke-width="1"/>
  <text x="676" y="100" font-family="Arial, sans-serif" font-size="28" font-weight="bold" text-anchor="middle" fill="#a78bfa">MIT</text>
  <text x="676" y="120" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">Open source</text>
  <text x="676" y="134" font-family="Arial, sans-serif" font-size="10" text-anchor="middle" fill="#64748b">license</text>
  <text x="676" y="155" font-family="Arial, sans-serif" font-size="9" text-anchor="middle" fill="#7C3AED">LICENSE</text>
</svg>
</p>

---

## 🔒 Privacy

Pluto is refreshingly straightforward here:

- **No user accounts.** No sign-in, no profiles, no tracking.
- **No local data storage.** Nothing is persisted between sessions.
- **API calls go to Google.** Your input text is sent to Google's Gemini API. Google's privacy
  policy governs what happens on their end — check [ai.google.dev](https://ai.google.dev) for details.
- **Your API key stays on your device.** It lives in `.env`, loaded at runtime, never sent anywhere
  except as an HTTP header in requests to Google's servers.
- **The `.env` file is gitignored** by the `.env.example` pattern — don't commit your real key.

> tl;dr — the only "data" leaving your device is the text you type + your API key header, going
> directly to Google. Pluto itself stores nothing.

---

## 🗺️ Future Roadmap

Things that could happen if caffeine levels stay high enough:

- [ ] 🎨 Theming / color scheme picker
- [ ] 📋 Copy-to-clipboard button on responses
- [ ] 🔁 "Try again" / regenerate button
- [ ] 📜 Conversation history (local, ephemeral)
- [ ] 🌐 Localization / multi-language support
- [ ] 🎭 More AI personas beyond Cupid and G Man
- [ ] ⚙️ Adjustable tone/temperature slider
- [ ] 🧪 Better test coverage (widget + integration tests)

PRs for any of these are very welcome. See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## 📄 License

MIT — do whatever you want with it, just don't sue anyone.
See [LICENSE](LICENSE) for the legal boilerplate.

---

<p align="center">
  Made with 💜 and way too much caffeine by <a href="https://github.com/Kaelith69">Kaelith69</a>
  <br/><br/>
  <em>"Why do programmers prefer dark mode?"</em><br/>
  <strong>Because light attracts bugs 🐛 — and we've got enough of those already.</strong>
</p>
