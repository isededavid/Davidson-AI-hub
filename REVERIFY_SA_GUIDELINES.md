# Reverify SA (Vision & Scale) — Short-Answer Ground-Truth Reverification

Condensed reference for the Multimango "Reverify Vision" / "Reverify Scale" queues (received
2026-09-28). Separate task from Sixth Sense authoring — here we **check** an existing answer, we
never write or edit questions.

- **Reverify Vision:** short clips (~1 min).
- **Reverify Scale:** long videos (observed up to ~40 min) — jump to the moment the question names.
- Same guidelines and same rubric for both.

## The job, per row
Watch the video → read the question and the recorded answer → decide one thing: **is the recorded
answer right about what happens in the video?** Not wording, not question quality.

Deliverables per row:
1. Verdict (1–4)
2. Reason: timestamp + observable detail
3. Tempting wrong answers (v1) / competing answers or what's never shown (v3)
4. Corrected answer — verdict 2 only
5. Verify with AI (8 verifiers) — verdicts 1 and 2 only

No preferred verdict. Don't lean "wrong" to look thorough or "right" to move fast.

## The four verdicts
| # | Verdict | Use when |
|---|---------|----------|
| 1 | Correct | Recorded answer means the same thing as what the video shows. Wording differences don't matter. |
| 2 | Correct answer exists, recorded one is wrong | Question is fine, video shows one clear answer, recorded answer isn't it. You must be able to state the right one. |
| 3 | Ambiguous / indeterminate | Two+ equally defensible answers, **or** nothing observable (subject off-frame, named moment never happens, too blurred, question unrelated to video). Also: if the *question* is the problem. |
| 4 | Requires special knowledge | Video is fine, one answer almost certainly exists, but naming it needs specific training (surgery, a script you can't read, sport rules, plant species, circuit components). Must name the expertise. |

**Never guess "Correct."** Unsure = verdict 3. Never invent an answer to fill a box.

## Decision tests
- **1 vs 2:** does the recorded answer *mean* the same thing? Synonym/rephrase = 1. Awkward but
  factually right = 1. Only a meaning difference = 2.
- **2 vs 3:** could a careful person write one answer everyone would agree with? Yes → 2 (and
  write it). No → 3. Don't force a 2 just to avoid calling a question bad. Re-watch the relevant
  part before settling on 3.
- **3 vs 4:** hand it to the right specialist — would they answer straight away? Yes → 4 (row is
  fine, you're the wrong reader). They'd be stuck too → 3 (row is broken). "Hard" or "I'd need to
  re-watch" is not special knowledge.

## Writing the corrected answer (verdict 2)
- Same short form/length as the original (2–3 words in → ~2–3 words out).
- Answer only what was asked; no extra detail.
- Say it plainly. Reasoning goes in the boxes below, not the answer.
- Test: could it swap in for the original without looking out of place?

## Evidence standards (every box)
- Precise timestamp ("at 0:14…", not "later").
- What is **visible**, not the conclusion ("hand is empty at 0:13", not "they got rid of it").
- Verdict 2: argue **both** directions — why old is wrong AND why new is right, each timestamped.
- If the text could be pasted onto any other video, it isn't evidence.

## Distractors / competing answers
- **Verdict 1:** name a real tempting wrong answer + why it's tempting. "None" is almost never
  acceptable — rows were picked because they're hard. Good distractor types seen in practice:
  mirrored-video left/right swap, the utensil vs. the container, the consequence vs. the action
  ("hang up" when the phone was actually dropped).
- **Verdict 3:** name the 2+ defensible answers with a timestamp each, or state what would have to
  be on screen and never is.

## Verify with AI (8-verifier check)
- Only on verdicts 1 and 2. Mark each response Correct/Wrong against the settled answer (original
  for v1, corrected for v2).
- ≥7 of 8 must come back; mark every one that came back. Errored ones are ignored. Retry only if
  fewer than 7 returned.
- Mark exactly what each said. Never re-run for a different split, never change a mark or your
  answer to chase a split. 8/8 Wrong and 8/8 Correct are both valid. Mismarking = falsification
  (automatic rubric score 1).

## Skip
Only when the video won't load/play, is cut off/corrupted, or is inappropriate. A playable video
always gets a verdict — hard rows are 3 or 4, never skip.

## QA rubric (how submissions are graded)
- **5 Exceptional:** right verdict; every justification has precise timestamp + concrete detail;
  v2 argues both directions; v1/v3 name specific distractors/competing answers with a reason each;
  corrected answer in same short form.
- **4 Strong:** right verdict with observation, but a timestamp approximate or one side thin;
  distractors plausible but unexplained.
- **3 Acceptable:** defensible verdict, some concrete evidence, but short / missing timestamp /
  generic distractors.
- **2 Weak:** one-line generic justification; v2 doesn't say why original is wrong; v3 names no
  competing answers; distractors missing or "none".
- **1 Unacceptable:** wrong verdict; unverified "Correct"; vague/guessed v2 answer; v3 with no sign
  the window was watched; correct original marked wrong over wording; v4 as escape hatch;
  mismarked verifier responses.

## Worked examples from the queue
- **Vision, v1:** Q "As the man says 'I'll watch some YouTube,' what item is visible in his left
  hand?" A "A bowl of ramen." Bowl in hand 0:15–0:16 through the sentence. Distractors: chopsticks
  (in the bowl), smartphone (in his right hand but appears on the left because the video is
  mirrored). All 8 verifiers said phone → all marked Wrong. Valid result.
- **Scale, v3 (39:59 video):** Q asks what the first drawing he points to with an arrow represents
  after "What is remote sensing?". A "Trees." At 1:00 the slide shows an eye and a camera; he never
  points to either with an arrow → premise never occurs → v3 ("never shown" branch). No AI verify.

## Pre-submit checklist
1. Watched the video before deciding.
2. Every box has a timestamp + observable detail.
3. Never guessed "Correct".
4. Ran 2-vs-3 and 3-vs-4 tests before any v3/v4.
5. v1 has a real distractor with a reason; v3 has competing answers or what's never shown.
6. v1/v2: every returned AI response marked exactly as it came back.
7. Skipped only for a broken video.

## Working with Claude on these rows (session notes)
- Claude can pull frames at exact timestamps with ffmpeg if the video is in the repo, but cannot
  hear audio (no speech-to-text installed). For questions anchored on speech ("as the man says…"),
  supply the timestamp of the line or a transcript excerpt.
- Mirrored video: left/right in-frame may be the subject's opposite hand — check for mirrored text
  or other cues before calling a hand/side.
