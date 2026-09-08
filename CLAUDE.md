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
- **Also flagged: leading with a stock conditional phrase — "If the..."** — even though the prompt
  itself is a legitimate hypothetical. The fix is not to drop the hypothetical; it's to not place it
  as the very first words. Fold the "if" clause into the middle/end of the sentence, or restructure
  so the question itself leads.
- Lead directly with the question itself; fold the subject identification, hypothetical setup, and
  grounding details into the question's own sentence structure instead of prefacing it.

### 3b. Overused Prompt Template — T2 (open-ended consequence of a change)
Beyond T3 (line-of-sight, see #1), there is a second named over-represented template: **T2**,
described as "asking how an outcome would change if an element of the scene were altered." This
covers the whole "if X were removed/changed, how would Y be affected?" counterfactual shape —
not just sightline counterfactuals.
- Avoid **both** T3 (line-of-sight/reachability) **and** T2 (if-X-changed, how-does-Y-change)
  shapes. That rules out most Change & Consequence prompts phrased as a counterfactual removal or
  alteration.
- If the underlying insight is still worth using (e.g. "the PA speaker reaches a distant crowd"),
  reframe it as a **direct "why" about the current, actual setup** rather than a hypothetical
  alteration — e.g. "Why is X positioned/aimed the way it is?" instead of "If X were removed, what
  would happen?" Same insight, different (non-templated) reasoning shape.
- There is no way to know in advance which templates are currently over-represented — treat every
  rejection-for-template-overuse as new data, and keep a running list here rather than guessing.

### 4. Rubric Contains Non-Mandatory Justification/Supporting Criteria (Critical)
A rubric item gets removed if it only supplies supporting evidence/observations for the
conclusion, rather than being a separately-requested answer component.
- If the prompt asks one question with one conclusion (e.g. "what does X suggest about Y"), only
  the criterion stating that conclusion is mandatory — a second criterion restating the visual
  evidence that supports it is "justification," not a required answer element, and gets flagged.
- This applies even when that evidence was central to how you reasoned your way to the answer.
  Mandatory means "the prompt asked for this specific output," not "this helped you get there."
- Default to fewer rubric items, not more. Only add a second/third criterion when the prompt
  itself has multiple parts or explicitly asks for reasoning ("...and explain why").

### 5. Atomicity Check (Warning)
A single rubric criterion that bundles two distinct properties into one sentence — e.g. "is much
larger AND occupies the central floor space" (size + location) — gets flagged for not being atomic.
- One idea per criterion, full stop, even inside a single clause. If a criterion needs "and" to
  join two separate observations, split it into two — don't just avoid "and" while still stating
  two distinct properties back to back.
- This compounds with #4 above: a criterion can be flagged as both non-mandatory *and* non-atomic
  at once. If a criterion is support/justification rather than a required answer element, the fix
  is to remove it, not split it.

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
5. When writing rubrics: start with as few items as the prompt's own question count requires
   (often just 1). Only add another item if the prompt has a genuinely separate part to answer —
   never to restate the evidence behind the first item. Check every item is one idea only (#5
   above) before adding it.

## Known discrepancy between the two guideline docs
- `Sixth-sense-guideline.pdf` (full, dated August 2026) is the more complete and more recent
  source — treat it as authoritative over `Brief-sixth-sense-guideline.docx` where they conflict.
- Evidence-window minimum: the full PDF says "no less than 1% of the video's total duration"
  (scales with length); the brief docx says a flat "minimum 3 seconds." Follow the full PDF's
  1%-of-duration rule.
- The brief docx's domain table omits **Spatial "Alien Viewpoint" and Reachability** as a
  subdomain (only lists 9 of the full PDF's 10). It still exists as a valid subdomain per the full
  PDF — just currently deprioritized per the "overused template" warning above.
