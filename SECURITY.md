# Security Policy

## Supported Versions

| Version | Supported |
|---|---|
| 1.0.x | ✅ Yes |

We're a small project. There's one supported version and it's whatever is on `main`. If you find
something in an older commit — update first, then check again.

---

## Reporting a Vulnerability

Found something that smells wrong? Please **don't** open a public GitHub issue for security
vulnerabilities. Doing so gives attackers a head start before anyone can fix it, and that's
not great for anyone.

Instead:

**Email:** Open a [GitHub Security Advisory](https://github.com/Kaelith69/flirty/security/advisories/new)
(preferred), or contact the maintainer directly via GitHub.

**What to include:**

- Description of the vulnerability
- Steps to reproduce (as detailed as you can manage)
- Potential impact (what could an attacker do with this?)
- Any suggested fix if you have one

**What happens next:**

1. You'll get an acknowledgement within **72 hours** (usually faster, we're online too much)
2. We'll investigate and keep you updated on progress
3. If confirmed, we'll work on a fix and coordinate disclosure timing with you
4. You'll be credited in the fix (unless you prefer anonymity — totally fine)

---

## Scope

Things that are **in scope**:

- API key exposure via the app
- Data leakage beyond what is described in the Privacy section
- Injection vulnerabilities via user input fields
- Dependency vulnerabilities in the Flutter/Dart package tree

Things that are **out of scope**:

- Vulnerabilities in Google's Gemini API itself (report those to Google)
- Social engineering attacks
- Denial of service via API key exhaustion (that's on the key owner, not us)
- Issues only reproducible on a jailbroken device

---

## Security Notes

**API Key Storage**

The Gemini API key is stored in a `.env` file and loaded at runtime via `flutter_dotenv`.
The `.env` file should never be committed to version control — it's included in the `.gitignore`
pattern via `.env.example`. If you accidentally committed a real key, revoke it immediately at
[aistudio.google.com](https://aistudio.google.com) and generate a new one.

**Data Transmission**

The only data sent over the network is:

1. Your API key (as an HTTP header to Google's servers)
2. The text you type into the input field (sent to Google's Gemini API)

No data is sent to any third-party server operated by this project. There is no project server.

---

## Dependency Vulnerabilities

If you discover a vulnerability in one of our dependencies (`http`, `flutter_dotenv`,
`google_fonts`, `switcher_button`), please report it to the respective package maintainers
**and** open a GitHub issue here so we can update the dependency.

---

Thanks for helping keep this project safe. Responsible disclosure is appreciated more than you know.
