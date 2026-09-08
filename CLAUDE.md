# Working notes: Sixth Sense (HSS) task construction

This repo is used for building "Sixth Sense" (Human Sixth Sense / HSS) latent-visual-reasoning
tasks — see `Sixth-sense-guideline.pdf` (full) and `Brief-sixth-sense-guideline.docx` (condensed)
for the actual project rules. Read those first; they are authoritative. This file is empirical
notes from real attempts — what actually made prompts pass or fail R2 (≥2 of 3 models must fail),
not just what looks hard on paper.

## Hard-won lessons

**1. "Explain the hidden mechanism" questions are a weak R2 bet.**
Two separate attempts ("why is this person at the podium a moderator, not a panelist" / "what's
happening with their arms as the swimmers descend") both got solved 3/3. The pattern: if the
question's own wording implies the answer's premise (e.g. "controlled, smooth descent" already
asserts the descent is controlled), a model can derive the rest from generic physics/social
reasoning alone, without needing the video at all. The visual grounding becomes decorative.
Before submitting, ask: *could a model answer this from the described scenario in text, with no
image?* If yes, it's not really testing R1.

**2. A binary "X or Y" question gets auto-flagged.**
The platform's checker rejects prompts phrased as a choice between two named options ("is he
a new panelist or is he there in an official capacity?") because a model can get "correct" by
guessing. Fix: ask a fully open question (what/why/how) and let the model produce the answer
itself, without handing it the candidate list.

**3. A stock "Focus on..." opener also gets flagged (Prompt Opener Variety Check).**
Lead with the question itself and fold the subject/grounding into it afterward, rather than
opening on an attention-directing phrase.

**4. Disagreement between model responses is necessary but not sufficient for R2.**
A 2-vs-1 split only counts if the majority is *wrong*. Always independently verify which answer
is actually correct before concluding R2 is met — don't assume the minority answer is the failure.
On one real attempt, two models converged on a real synchronized-swimming technical fact (the
"vertical" figure is face-down/inverted, not face-up) that contradicted the golden answer — the
two agreeing models were right and the golden answer was wrong. Always sanity-check the golden
response against real domain conventions, not just what's visually adjacent in the clip.

**5. Famous / dated / findable source clips carry real contamination risk.**
A viral, specifically-titled clip (confirmed via file metadata — title/artist/date fields) is more
likely to have model priors from training data that let it "solve" the task without truly using
the footage. Prefer generic, undated, un-captioned source video. Check `ffprobe`/`ffmpeg -i`
metadata for a title before investing time in a clip.

**6. Blurry or ambiguous-even-to-a-human cues are dead ends, not opportunities.**
If a moment (motion blur during a fast splash, an overexposed foreground silhouette) can't be
confidently resolved by careful close inspection, it fails the "unreliable cue" rule regardless of
whether it *looks* like good Hidden & Invisible material. Verify at full zoom before building a
prompt around it.

**7. Extrapolation-domain questions don't work if the full video shows the actual outcome later.**
The model sees the whole clip, not just the annotated evidence window — the window only marks
where the *relevant* evidence sits. So "what happens next" only works if that future state is
never shown anywhere in the full clip.

## Workflow efficiency

- No `ffmpeg`/`ffprobe` preinstalled in this environment. Fix once per session:
  `pip install imageio-ffmpeg` (bundles a static binary), then use
  `python3 -c "import imageio_ffmpeg; print(imageio_ffmpeg.get_ffmpeg_exe())"` to get its path.
  Costs a few seconds; not the real bottleneck.
- The real time cost is broad exploratory frame sweeps (extracting/viewing 20-25 frames just to
  get oriented) plus repeated narrow re-extractions per candidate hypothesis. Prefer targeted
  extraction around a specific already-suspected moment over broad sweeps when possible.
- When reviewing model responses against a rubric, check each response against each criterion
  individually and explicitly before concluding a pass/fail count — don't eyeball it.
