# Roadmap

What Pluto could become, ranked roughly by how often someone has asked for it or how useful it
would actually be.

This is a wishlist, not a promise. Things get built when someone builds them — and that someone
could be you. See [CONTRIBUTING](../CONTRIBUTING.md) if you want to make any of this happen.

---

## Current State: v1.0.0

What works right now:

- [x] Cupid Mode (flirty pickup lines via Gemini)
- [x] G Man Mode (witty clever replies via Gemini)
- [x] Mode toggle with `SwitcherButton`
- [x] Loading indicator during API calls
- [x] Graceful error handling in UI
- [x] Responsive layout
- [x] Dark theme
- [x] 500-char input safety cap
- [x] Cross-platform: Android, iOS, Web, Linux, macOS, Windows
- [x] `.env` based API key config

---

## Near-term (v1.1.x)

Small quality-of-life improvements. These should be straightforward to implement and would make
the app noticeably better day-to-day.

- [ ] **📋 Copy to clipboard** — One tap to copy the AI's response to your clipboard. This is
  the most requested feature. You shouldn't have to manually select text.

- [ ] **🔁 Regenerate button** — Tap to get a new response for the same input without clearing
  the field and re-sending. Gemini generates differently each time.

- [ ] **⌨️ Send on Enter** — Keyboard submit support so you don't have to reach for the button.

- [ ] **🧹 Clear button** — A quick way to wipe both input and response and start fresh.

---

## Medium-term (v1.2.x)

More substantive features that add real capability but stay within the app's focused purpose.

- [ ] **📜 Session history** — Keep a list of this session's exchanges (input + response pairs)
  that disappears when the app closes. No persistence, no accounts — just scroll up to see what
  the AI said three messages ago.

- [ ] **🎭 More personas** — Beyond Cupid and G Man. Maybe a "Poet" mode for Shakespearean
  dramatics. Maybe a "Chef" mode for the inexplicable number of food-related small talk situations.
  The prompt engineering is the fun part.

- [ ] **⚙️ Tone slider** — Expose Gemini's temperature or a "formality level" so users can dial
  in how intense the persona is. Full romantic vs. subtly flirty. Full nerd vs. casually clever.

- [ ] **🌐 Localization** — English only right now. Multi-language support would significantly
  expand reach. Flutter's `intl` package makes this tractable.

---

## Longer-term (v2.x)

Bigger changes that would require more architectural thought. Still plausible, just not imminent.

- [ ] **🎨 Theme picker** — Light mode, custom accent colors. Dark mode is great but some people
  are wrong about this.

- [ ] **💾 Saved favorites** — Let users save responses they like to a local list. No cloud
  sync needed — just local storage.

- [ ] **🧪 Improved test coverage** — Widget tests for the key interactions, integration tests
  for the API flow with mocked responses. The current test suite is a smoke test. It should be
  more.

- [ ] **♿ Accessibility audit** — Screen reader support, proper semantic labels, minimum touch
  target sizes. Not glamorous work but important.

- [ ] **🔑 In-app API key entry** — Instead of requiring `.env` setup, let users enter their
  API key in a settings screen on first launch. Lowers the barrier for non-developers.

---

## Probably Not Happening

Things that have come up but don't fit the vision:

- **User accounts / cloud sync** — Overengineering for a fun tool. The simplicity is a feature.
- **Paid subscription tier** — It's MIT open source. Fork it.
- **Training your own model** — The whole point is using Gemini. We're not building a model.
- **Social sharing features** — Copy and paste exists. That's enough.

---

## Contributing to the Roadmap

Have a feature idea not listed here? Open a GitHub issue with the `enhancement` label. If you
want to build one of the listed features, comment on the relevant issue (or create one) to let
others know you're working on it before you invest a weekend.

See [CONTRIBUTING](../CONTRIBUTING.md) for how to submit a PR.

---

*"A roadmap is just a polite way of saying 'we thought about this.'  
Shipping is what turns the roadmap into reality."*
