# Usage

How to actually use Pluto. If you've already installed it and just want to know what the buttons
do, this is your page.

---

## The Interface

The app has one screen. That's it. One screen, two modes, one input, one output. No dashboards,
no settings menus, no subscriptions, no "upgrade to premium to unlock feelings."

```
┌──────────────────────────────────────┐
│                                      │
│   G MAN ◉────────────────○ CUPID    │  ← mode toggle
│                                      │
│  ┌────────────────────────────────┐  │
│  │  type the message here...      │  │  ← text input
│  └────────────────────────────────┘  │
│                               [ ↑ ]  │  ← send button (appears when text is entered)
│                                      │
│  ┌────────────────────────────────┐  │
│  │                                │  │
│  │   AI response appears here     │  │  ← response card
│  │                                │  │
│  └────────────────────────────────┘  │
│                                      │
└──────────────────────────────────────┘
```

---

## Step-by-Step

### 1. Pick Your Mode

The toggle at the top switches between the two AI personas:

**💘 Cupid Mode** (toggle right)
> The AI becomes a hopeless romantic. Input any text, receive a flirty pickup line.
> Great for: responding to texts, opening lines, compliments with flair.

**🧠 G Man Mode** (toggle left)
> The AI puts on a turtleneck and delivers something intellectually sharp and witty.
> Great for: clever comebacks, thoughtful responses, sounding like you read books.

You can toggle the mode **at any time**, including before or after typing. The mode doesn't
affect your typed text — just the personality of the AI's response.

### 2. Type Your Message

Tap the text field and type the message you want to respond to. This is the input the AI uses
as context for its reply.

**Examples of good inputs:**

```
"You up?"
"What are you doing this weekend?"
"What's the meaning of life?"
"You seem interesting."
"I bet you can't make me smile."
```

**The 500-character limit:** Inputs longer than 500 characters are automatically trimmed before
being sent to the API. You won't see an error — it just quietly caps it. If your input is a
full essay, consider trimming it yourself for better results.

### 3. Send

The **↑ send button** appears in the bottom-right of the input area once you've typed something.
Tap it.

The input field will show a loading spinner while the AI is generating a response. This usually
takes 1–3 seconds depending on Gemini's current mood and your network connection.

### 4. Read the Response

The AI's reply appears in the response card below the input. That's the line you can use.

If something went wrong (network error, API issue, invalid key), the response card will show an
error message instead of going silent and pretending nothing happened.

---

## Example Interactions

### Cupid Mode

```
Input  : "You up?"
Output : "Only because the stars had to make room for someone as bright as you."

Input  : "I bet you can't make me smile."
Output : "Challenge accepted — but fair warning, my smile game is dangerously charming."

Input  : "What are you doing this weekend?"
Output : "Nothing yet, but I hear my heart is making plans that involve you."
```

### G Man Mode

```
Input  : "You up?"
Output : "Technically, yes — but only because insomnia and curiosity are the engines of progress."

Input  : "What's the meaning of life?"
Output : "42 was Hitchhiker's answer. Mine requires a better question."

Input  : "Prove you're smart."
Output : "Intelligence isn't proven — it's demonstrated through the questions one chooses to ask."
```

---

## Tips for Better Results

- **Be specific with context** — "You seem really interesting" gets better results than "hi"
- **Use natural language** — The AI is trained on human conversation; write like a human
- **Try both modes on the same input** — Sometimes G Man gives a funnier result than Cupid
- **Short inputs work great** — Two to three sentences is usually the sweet spot
- **Regenerate by tapping send again** — Gemini generates different responses each time;
  just tap send again on the same input if the first result isn't quite right

---

## Configuration

The only configurable value is your API key, which lives in `.env`:

```dotenv
API_KEY=AIzaSy...your_real_key_here
```

All API calls use the Gemini 1.5 Flash model. There is no UI for changing the model or
temperature — the defaults work well for this use case.

---

## Running Tests

```bash
flutter test
```

Tests live in `test/widget_test.dart`. They cover basic widget rendering and smoke-test the
key UI components.
