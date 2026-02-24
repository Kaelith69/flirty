# Architecture

Pluto is deliberately simple. There are exactly four Dart files that matter, and they each have
one job. No over-engineering. No unnecessary abstraction. Just clean separation of concerns and
the quiet confidence of a codebase that knows what it is.

---

## Layer Overview

```
┌─────────────────────────────────────────────────────┐
│                    Flutter App                      │
│                                                     │
│  main.dart          ← bootstrap + .env loader       │
│      │                                              │
│      ▼                                              │
│  MyApp              ← MaterialApp + dark theme      │
│      │                                              │
│      ▼                                              │
│  HomeScreen         ← all UI + local state          │
│      │                                              │
│      ▼                                              │
│  ApiService         ← HTTP logic + prompt building  │
└─────────────────────────────────────────────────────┘
                           │
                           ▼ HTTP POST
              ┌────────────────────────┐
              │  Google Gemini API     │
              │  (1.5 Flash model)     │
              └────────────────────────┘
```

---

## Files and Their Responsibilities

### `lib/main.dart` — The Ignition Switch

Does exactly two things:

1. Loads the `.env` file using `flutter_dotenv`
2. Runs `MyApp`

That's it. It doesn't render anything. It doesn't know anything about the UI. Its entire
existence is "start the car and hand the keys to MyApp."

```dart
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}
```

### `lib/main.dart` → `MyApp` — The Foundation

`MyApp` is a `StatelessWidget` that sets up the `MaterialApp` with:

- `ThemeData.dark()` — dark theme, because the app knows its audience
- Initial route pointing to `HomeScreen`

No business logic. No state. Just the frame around the picture.

### `lib/screens/home_screen.dart` — The Brain

This is where the actual application lives. `HomeScreen` is a `StatefulWidget` that owns:

| State | Type | Purpose |
|---|---|---|
| `_switchValue` | `bool` | `false` = G Man mode, `true` = Cupid mode |
| `_controller` | `TextEditingController` | Text input field |
| `_isLoading` | `bool` | Controls spinner visibility |
| `_response` | `String` | Holds the AI's reply (or error message) |

The `_sendRequest()` method orchestrates the whole thing:

1. Reads the toggle state and text input
2. Shows the loading spinner
3. Calls `ApiService.generateResponse()`
4. Updates `_response` with the result
5. Hides the spinner
6. Handles errors gracefully if the API fails

The send button only appears when the text field is non-empty — `_controller.text.isNotEmpty`
gates its visibility. No accidental blank submissions.

### `lib/services/api_service.dart` — The HTTP Layer

`ApiService` is a static class with one public method: `generateResponse(String input, bool isCupid)`.

It does four things and only four things:

1. **Builds the prompt** — Two different prompt templates based on `isCupid`:
   - Cupid: `"Give a single flirty reply that sounds like a romantic pickup line for..."`
   - G Man: `"Give a reply that sounds like a highly intelligent and witty person for..."`

2. **Enforces the input cap** — Takes `input.substring(0, min(input.length, 500))` to prevent
   accidentally submitting an entire novel to the API

3. **Makes the HTTP POST** — Sends the prompt to Gemini 1.5 Flash via REST

4. **Parses the JSON response** — Extracts `candidates[0].content.parts[0].text` from the
   response body, throws on any HTTP error or unexpected structure

### `lib/const.dart` — The Style Helper

One function: `txtstyle(double size, FontWeight weight, Color color)` returning a `TextStyle`
using `google_fonts`. Used across the app for consistent typography without repeating yourself.

---

## Data Flow

```
User types message
        │
        ▼
HomeScreen._sendRequest()
        │
        ├─ reads _switchValue (Cupid or G Man?)
        ├─ reads _controller.text (the message)
        ├─ sets _isLoading = true  →  spinner appears
        │
        ▼
ApiService.generateResponse(input, isCupid)
        │
        ├─ builds context-aware prompt
        ├─ trims input to 500 chars
        ├─ HTTP POST to Gemini 1.5 Flash REST endpoint
        │
        ▼
Gemini API
        │
        └─ returns JSON: { candidates: [{ content: { parts: [{ text: "..." }] } }] }
        │
        ▼
ApiService parses JSON
        │
        └─ extracts text string, returns it (or throws Exception)
        │
        ▼
HomeScreen
        ├─ sets _response = result
        ├─ sets _isLoading = false  →  spinner hides
        └─ setState() → UI redraws with reply in response card
```

---

## State Management Approach

Pluto uses Flutter's built-in `StatefulWidget` + `setState`. There is no external state
management library (no Provider, no Riverpod, no BLoC). This is intentional — the app has one
screen and three pieces of local state. Introducing a state management framework here would be
like hiring a full-time engineer to flip a light switch.

If the app grows to multiple screens with shared state, this decision should be revisited. For
now: `setState` is the answer, and it's a fine answer.

---

## Dependency Graph

```
main.dart
├── flutter_dotenv       (env loading)
└── MyApp
    └── HomeScreen
        ├── switcher_button     (mode toggle widget)
        ├── google_fonts        (typography)
        ├── const.dart          (txtstyle helper)
        └── ApiService
            ├── http            (HTTP client)
            ├── flutter_dotenv  (API key reading)
            └── dart:convert    (JSON parsing)
```

---

## Platform Architecture

Flutter compiles to native code per platform. The `lib/` directory is shared across all targets.
Platform-specific configuration lives in:

- `android/` — Gradle config, Android manifest
- `ios/` — Xcode project, iOS plist
- `web/` — HTML entry point, web manifest
- `linux/`, `macos/`, `windows/` — Desktop runner scaffolding

The app code itself has no platform-specific logic — it runs identically everywhere.
