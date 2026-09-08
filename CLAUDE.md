# Davidson-AI-hub — Working Notes

Read this in full before doing any Sixth Sense / Outlier task-authoring work in this repo.

## Outlier platform automated checks (learned from real rejections)

These are automated linter warnings the Outlier task-review tool has actually raised against
prompts written for this project. They are platform-specific — not always predictable just by
re-reading the guideline PDFs — so treat every one of these as a hard constraint to check against
before proposing a prompt, not just a style preference.

### 1. Overused Prompt Template (e.g. "T3 — Person or animal line of sight")
The platform tracks which reasoning template each submitted prompt matches, and rejects a prompt
if its template is already over-represented in the dataset.
- **Do not default to line-of-sight / reachability questions** ("can X see Y", "would Z be within
  view") — this template has already been flagged as over-used.
- Vary the domain/subdomain actively across prompts for the same piece of media instead of
  reaching for the same reasoning shape each time.
- There's no way to know a template is "over-represented" without submitting — if a prompt is
  rejected for this reason, ask what template it matched and deliberately pick a different
  domain/subdomain next time, don't just reword the same underlying question.

### 2. Binary Question Check
A prompt is rejected if it can be answered by picking between two options (yes/no, either/or) —
a model can score correctly by guessing.
- Never phrase the core question as yes/no or "A or B."
- Use open-ended forms: **what, why, how, where, from what** — something whose answer space isn't
  reducible to two alternatives.
- Do not "fix" this by just adding "...and explain why" onto a binary question — that's not what's
  being asked for; the question itself must be open-ended.

### 3. Prompt Opener Variety Check (error code O1)
Prompts are rejected for opening with a stock attention-directing phrase — **"Focus on..."** is
the specific one that got flagged, and phrases like it are heavily overused across the dataset.
- Never open a prompt with "Focus on", "Consider", "Imagine", "Look at", or similar throat-clearing.
- Lead directly with the question itself; fold the subject identification, hypothetical setup, and
  grounding details into the question's own sentence structure instead of prefacing it.

## Process implication
When drafting a Sixth Sense prompt for this project:
1. Pick a domain/subdomain deliberately different from whatever was just tried (don't repeat
   line-of-sight/reachability back to back).
2. Write the question in open-ended form (what/why/how/where/from what) — never binary.
3. Start the sentence with the question itself, not a directive opener.
4. Still satisfy everything in `Sixth-sense-guideline.pdf` and `Brief-sixth-sense-guideline.docx`
   (Caption Test, R1/R2, one central challenge, no timestamps in the prompt, no audio dependence,
   single verifiable golden answer, video evidence spread across separated moments rather than
   solvable from one frame).

## Known discrepancy between the two guideline docs
- `Sixth-sense-guideline.pdf` (full, dated August 2026) is the more complete and more recent
  source — treat it as authoritative over `Brief-sixth-sense-guideline.docx` where they conflict.
- Evidence-window minimum: the full PDF says "no less than 1% of the video's total duration"
  (scales with length); the brief docx says a flat "minimum 3 seconds." Follow the full PDF's
  1%-of-duration rule.
- The brief docx's domain table omits **Spatial "Alien Viewpoint" and Reachability** as a
  subdomain (only lists 9 of the full PDF's 10). It still exists as a valid subdomain per the full
  PDF — just currently deprioritized per the "overused template" warning above.
