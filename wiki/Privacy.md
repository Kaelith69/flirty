# Privacy

Pluto has a refreshingly short privacy story. Here's the whole thing.

---

## What Data Leaves Your Device

When you tap the send button, exactly two things leave your device:

1. **The text you typed** — sent to Google's Gemini API as part of the prompt
2. **Your API key** — sent as an HTTP header to authenticate the request

That's it. Those two things go directly from your device to Google's servers. Nothing passes
through any server operated by this project. There is no project server. There is no telemetry.
There is no analytics. There is no database capturing your conversations.

---

## What Stays Local

| Data | Where it lives | Persisted? |
|---|---|---|
| Your API key | `.env` file on your device | ✅ Yes (until you delete it) |
| Text input | App memory (RAM) | ❌ No — cleared on session end |
| AI responses | App memory (RAM) | ❌ No — cleared on session end |
| Mode toggle state | App memory (RAM) | ❌ No — resets on app restart |

There is **no local database**. There is **no cloud sync**. There is **no user account**.
When you close the app, the conversation is gone.

---

## Google Gemini API

Your inputs are processed by Google's Gemini 1.5 Flash model via their REST API. Google's own
privacy policy governs how they handle that data. Key things to know:

- Google may use API inputs for safety monitoring and model improvement (check their current policy)
- You can review Google's AI terms at [ai.google.dev/terms](https://ai.google.dev/terms)
- If you're concerned about a specific input being logged, don't type it

This is a Google AI API, not a local model. Your text leaves your device.

---

## API Key Security

Your Gemini API key is sensitive — it's the thing that authorizes Google to charge your quota
(or your billing account if you have one). Keep it safe.

**Good practices:**
- Never share your `.env` file
- Never commit your `.env` file to a public repo (it's gitignored by default — keep it that way)
- If you accidentally expose it, revoke it immediately at [aistudio.google.com](https://aistudio.google.com)
  and generate a new one
- The free tier API key has usage quotas, so even if leaked it won't cause financial damage —
  but it will exhaust your quota fast

**The app reads your API key from `.env` using `flutter_dotenv`.** It is loaded once at startup
and used exclusively in HTTP headers sent to Google. It is never logged, stored elsewhere, or
transmitted to any other endpoint.

---

## Network Requests

The only outbound network request the app makes is:

```
POST https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent
```

With:
- `Authorization: Bearer <your API key>`
- `Content-Type: application/json`
- Body: JSON with your prompt text

No other network requests are made. No crash reporting SDKs, no analytics endpoints, no CDNs
for assets (fonts are loaded via `google_fonts` which may make requests to Google Fonts CDN on
first use — standard Flutter behavior).

---

## Third-Party Dependencies

The app uses these packages, each with their own privacy implications:

| Package | Privacy notes |
|---|---|
| `google_fonts` | May load fonts from Google Fonts CDN on first use |
| `flutter_dotenv` | Local file reading only — no network |
| `http` | HTTP client library — only makes requests your code initiates |
| `switcher_button` | UI widget — no network, no data |
| `cupertino_icons` | UI icons — no network, no data |

---

## Summary

| Question | Answer |
|---|---|
| Does Pluto track usage? | No |
| Does Pluto store conversations? | No |
| Does Pluto have user accounts? | No |
| Does Pluto send data to third parties? | Only to Google Gemini API (your inputs) |
| Is the app open source? | Yes — [MIT License](../LICENSE) |

If you have privacy concerns that aren't addressed here, open an issue and we'll clarify.
