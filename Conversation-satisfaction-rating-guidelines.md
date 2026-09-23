# Conversation Satisfaction Rating — Annotation Guidelines (reference copy)

Source: Mindrift / Toloka help center, "Project Conversation Satisfaction Rating" (Audio Rating ·
English · Expert guide). The platform article is the source of truth; this is a faithful condensed
copy kept for reference in this repo.

## Task in one paragraph
Listen to a recorded conversation between a user and an AI voice agent (smart-speaker assistant).
For **every agent turn**, rate as if you were the user on two independent axes — **Content** (what
was said) and **Prosody** (how it sounded) — each 1–5 with a written justification. User turns are
context only and are never rated. Target behaviour: a skilled assistant that sounds fully human and
never insults the user, never rejects a reasonable request, stays respectful and non-NSFW.

## Interface
1. **Listen step** — full-conversation player + read-along transcript. The whole conversation must
   be played before submitting.
2. **Rate step** — one tab per agent turn. Left: user turn (context) + agent response with a
   per-turn player. Right: Content and Prosody 1–5 scales, each with a justification box. A
   "Can't rate this turn?" control at the bottom handles discards.

## Workflow
1. Read the scenario/goal at the top (e.g. "Buying a first car").
2. Play the whole conversation once, start to finish (turns depend on earlier/later context).
3. For each agent turn: Content score + justification, Prosody score + justification.
4. Revise freely as context builds.
5. Submit when every agent turn is rated (or discarded with a reason).

Rule of thumb: if you can't say *why* in one specific sentence, the turn isn't finished.

## The two axes — independent
- **Content** = the words only: helpful, relevant, correct, appropriately complete. Would be the
  same from transcript or audio.
- **Prosody** = delivery only: intonation, pacing, emphasis, expressiveness, naturalness,
  pronunciation. Requires audio.

| The agent… | Content | Prosody |
|---|---|---|
| perfect answer, flat robotic monotone | high | low |
| useless advice, warm natural voice | low | high |
| answers well and sounds human | high | high |
| poor answer, poorly delivered | low | low |

## Scale (both axes)
5 Very satisfied · 4 Somewhat satisfied · 3 Neutral · 2 Somewhat dissatisfied · 1 Very dissatisfied.
Reserve 1 and 5 for turns that earn them; most real turns land 2–4. A wall of 5s or 3s is a red flag.

**Content anchors**
- 5 — directly and fully answers; accurate; right detail; anticipates the obvious follow-up.
- 4 — helpful and relevant but thin, generic, or slightly over/under-complete.
- 3 — partially useful, or correct but unhelpfully vague.
- 2 — misses the point, ignores a stated constraint, or advice has a real problem.
- 1 — wrong, off-topic, or actively unhelpful/misleading.

**Prosody anchors**
- 5 — fully natural; sounds like an overheard real conversation.
- 4 — mostly natural; one or two moments slightly off/performed.
- 3 — mix of natural and unnatural; clear but not pervasive issues.
- 2 — multiple overlapping problems; more robotic than human.
- 1 — severely broken; jarring artefacts, voice changes, completely unnatural.

## Rating Content — "did this actually help me?"
Helpfulness & relevance · all components of a multi-part query · correctness (≤ ~5 min
fact-checking) · follow-up questions only when genuinely needed · completeness/detail · organization
(not repetitive) · comprehension level (no baby-talk, no burying jargon) · **tone of the words**
(word choice, not voice — insulting wording is a Content problem).

Worked examples:
- Theatre arts & communities, general answer with no concrete example → **4**.
- "Gift under $20" → recommends a $75 speaker, ignores budget → **2**.
- Chicken thighs + vegetarian sister → sheet pan with chicken and chickpeas on the same pan
  (cross-contamination), never checks available veg → **2** (credit for vegetarian protein).

## Rating Prosody — "did it sound like a real person, appropriate to the moment?"
Intonation (rising for questions, falling for statements) · pacing/fluency · emphasis on key words ·
expressiveness · naturalness/persona (not acted/robotic) · emotion match (empathetic/excited at a
reasonable level; wit OK, never unintentionally dismissive) · pronunciation/enunciation · steady
volume · timing (responds/backchannels when a human would) · **consistent voice identity** (a
mid-conversation identity change is important — note it).
Minor disfluencies ("um", "uh", "hmm") are normal, not defects; a stiff filler-free monotone can
sound *less* human.

Worked examples: warm, natural delivery with good rising intonation on the question, a clean restart
after interruption, a slightly off "Hmm" → **5**. Correct words read in flat monotone, 4-second dead
pause before starting, rushed ending → **2**.

## Justifications
- Every score needs one. Name a **concrete anchor** — a quote plus a criterion ("pause after
  'hello'", not "weird pauses").
- Cover good and bad.
- Length follows score: short is fine for 4/5; **a 1–3 must say what was lacking or wrong**.
- Score and reason must agree (no praise + 2, no fault + 5).
- Stay on axis: Prosody box = sound only (pace, pitch, emphasis, pauses, warmth, pronunciation);
  Content box = words only (relevance, accuracy, helpfulness, completeness).
- No copy-paste across turns. Vague, copy-pasted, contradictory, or wrong-axis justifications are
  auto-flagged and sent back.

| ✅ Good | ❌ Rejected |
|---|---|
| C2 · "Helpful advice but slightly off-topic — user asked about sleep, agent mentioned exercise." | C3 · "It was okay." |
| C5 · "Directly addressed the question with a clear, actionable suggestion." | C1 · "Bad." |
| P2 · "Unnatural pause mid-sentence after 'I think', and 'definitely' had a strange pitch jump." | P2 · "Didn't sound good." |
| P5 · "Natural flow, appropriate emphasis on key words, pacing matched the tone perfectly." | P4 · "Fine." |

## Edge cases
- **Backchannels** (mm-hmm, right, yeah) are normal and **are rated**: Content — appropriate here?
  (acknowledging mid-explanation → 4–5; bare "mm-hmm" to a direct question → 1–2). Prosody —
  natural, engaged, human timing?
- **Barge-in / overlap** is expected; judge how gracefully the agent yields and resumes (Prosody).
- **Bleed at boundaries** — a fraction of a second of the other speaker is normal; never discard,
  don't let it affect the score.
- **Very short turns** ("Sure.") are still rated in context.
- **Disagree with the advice** → rate on your own opinion.
- **Repeats** → rate each occurrence independently; a repeat can be less satisfying.
- **Mixed prosody** → one overall rating: mostly good + one minor issue → lean 4; mostly bad + one
  good moment → lean 2.
- **Rate whatever is labelled Agent** — don't second-guess possibly swapped labels.

## Skip vs. Discard
**Skip** (your limitation — platform Skip button, don't rate or discard):
- unfamiliar topic or accent;
- audio extremely slow / not loading **with no error**.

**Discard** (data unusable — pick the matching reason):
- Transcription completely incorrect (minor errors / stray non-English chars don't count).
- Segmentation completely incorrect (slightly-off boundaries don't count).
- Inappropriate / violent content.
- Audio unavailable / error (an "Audio Load Error…" message is shown).
- Extraneous content beyond the conversation (pre-roll intro, studio direction, script/role talk).

Not discard reasons: boundary bleed, backchannels, disagreeing with the agent. Discard only if the
audio has none of the transcribed speech or misalignment is so severe the intended response can't
be identified.

## Do / Don't
| Don't | Do |
|---|---|
| Let a pleasant voice raise Content | Score Content on words alone |
| Let a weak answer lower Prosody | Score Prosody on delivery alone |
| Write "good"/"ok"/"sounded fine" | Name a concrete anchor |
| Put a content reason in the prosody box | Keep each justification on its axis |
| Give every turn 3/3 | Use the full 1–5 range |
| Guess on an unfamiliar accent/topic | Skip honestly |
| Discard for user bleed at the edge | Rate the agent turn |
| Give a 5 then describe a problem | Make score and reason agree |
| Paste the same justification | Write one per turn |
| Leave a 1–3 unexplained | Say what was wrong |
| Discard for "unfamiliar topic/accent" | That's a Skip |

## Per-turn checklist
- [ ] Played the whole conversation before finalizing
- [ ] Content 1–5 + specific justification about the words
- [ ] Prosody 1–5 + specific justification about the delivery
- [ ] Axes scored independently
- [ ] Concrete anchor; score and reason agree; a 1–3 says what was wrong
- [ ] Justification specific to this turn, not copy-pasted
- [ ] Prosody comment is delivery only
- [ ] Full range used where earned
- [ ] Skip vs. discard chosen correctly, reason recorded
