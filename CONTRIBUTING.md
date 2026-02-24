# Contributing to Pluto 💜

First off — thanks for even looking at this file. That already puts you ahead of 80% of people
who just fork and ghost. Welcome.

---

## Before You Start

Open an issue **first** for anything bigger than a typo fix. Not because we're gatekeeping, but
because it's genuinely sad when two people spend their weekend on the exact same feature and
submit conflicting PRs at 11:59 PM on a Sunday. We've all been there.

For small stuff (bug fixes, docs, style tweaks) just go ahead and open a PR directly.

---

## Getting Set Up

```bash
git clone https://github.com/Kaelith69/flirty.git
cd flirty
flutter pub get
cp .env.example .env
# add your Gemini API key to .env
```

Make sure things actually run before you change anything:

```bash
flutter run
flutter test
```

If it's broken before you touched it, that's not your fault — but worth mentioning in your PR.

---

## Branching Model

We keep it simple. No GitFlow ceremony here.

| Branch | Purpose |
|---|---|
| `main` | Stable, deployable code. Do not push directly. |
| `feature/<name>` | New features. Branch off `main`. |
| `fix/<name>` | Bug fixes. Branch off `main`. |
| `docs/<name>` | Documentation only. |
| `chore/<name>` | Dependency updates, config changes, etc. |

```bash
# Example
git checkout -b feature/copy-button
git checkout -b fix/spinner-not-stopping
git checkout -b docs/improve-installation
```

---

## Commit Style

We use [Conventional Commits](https://www.conventionalcommits.org/). It's not bureaucracy — it
makes changelogs readable by humans (and automated tools if we ever need them).

**Format:** `<type>(<scope>): <short summary>`

| Type | When to use it |
|---|---|
| `feat` | New feature or capability |
| `fix` | Bug fix |
| `docs` | Documentation only |
| `style` | Formatting, whitespace — no logic change |
| `refactor` | Code restructure without behavior change |
| `test` | Adding or fixing tests |
| `chore` | Build, deps, config stuff |

**Examples:**

```
feat(ui): add copy-to-clipboard button on response card
fix(api): handle empty response from Gemini gracefully
docs(readme): update installation instructions for macOS
chore(deps): bump http to 1.2.0
```

Keep the summary under 72 characters. Use the body for context if needed. Don't write `fixed
stuff` — future you (or someone else) will have to git-blame that and be very confused.

---

## Pull Request Checklist

Before you open a PR, run through this:

- [ ] Code runs without errors (`flutter run`)
- [ ] Tests pass (`flutter test`)
- [ ] Linter is happy (`flutter analyze`)
- [ ] I didn't break any existing functionality
- [ ] I didn't commit my `.env` file (please, please don't)
- [ ] PR description explains *what* and *why*, not just *what*

---

## Code Style

- Follow the existing code style in the files you're editing
- Run `flutter analyze` — fix what it complains about
- `flutter format .` before committing is a nice-to-have
- The linter config lives in `analysis_options.yaml` — don't disable rules without a good reason

---

## What We'd Love to See

- 📋 Copy-to-clipboard on responses
- 🔁 "Try again" / regenerate button
- 🎭 More AI personas
- 🧪 Better test coverage
- 🐛 Bug fixes (especially edge cases in the API response parsing)
- 📱 Accessibility improvements

Check the [Roadmap](README.md#️-future-roadmap) in the README for the full wishlist.

---

## What We're Not Looking For Right Now

- Complete rewrites of working systems
- State management framework migrations (we know it's "just `setState`" — that's intentional)
- Features that require new paid dependencies
- Anything that changes the project's core personality — this is a fun, focused tool

---

## Code of Conduct

Be excellent to each other. That's it. That's the whole policy.

Don't be rude, don't be dismissive, don't punch down. This is a chill project and we'd like to
keep it that way.

---

## Questions?

Open an issue with the `question` label. We're humans, we respond.

Thanks for contributing! 🚀
