# Video Evaluation Guidelines

A comprehensive framework for evaluating AI-generated videos across multiple dimensions. Use these guidelines when comparing video pairs to assess quality, instruction adherence, and realism.

---

## Quick Start

Before evaluating any videos:
1. **Read the prompt carefully** — understand every detail: subjects, actions, setting, style, camera movement, and temporal events
2. **Enable audio** — turn up speakers; many videos have critical sound design
3. **Watch fully** — watch both videos at normal speed before forming judgments
4. **Re-watch and inspect** — pause, scrub, and play frame-by-frame to catch details and artifacts
5. **Avoid ties** — even if both responses have issues, identify which one is better

---

## Evaluation Dimensions

### 1. Overall Preference

**Question:** Which response do you prefer overall, based on both the video and the sound?

**What to assess:**
- Combined judgment of video quality AND audio quality working together
- How well the overall experience matches the prompt intent
- Immersion and viewing experience
- Audio-visual harmony

**Look for:**
- Smooth animation paired with fitting audio
- Accurate audio-visual sync throughout
- Prompt faithfulness in both visual and audio elements
- No jarring disconnects between sound and action

**Red flags:**
- Weaker animation combined with poor audio
- Disconnected soundtrack that doesn't match the action
- Sound that undermines visual quality

---

### 2. Instruction Following

**Question:** Which video better follows the given prompt instructions?

**Critical elements to verify:**
- Correct subjects and objects (are the right things present?)
- Accurate actions (are events happening as specified?)
- Proper setting (location, environment, composition)
- Visual style adherence (artistic direction, color palette, texture)
- Camera movement (angle, orbit, pan, zoom — as specified)
- Temporal sequence (timing of events; "first... then..." sequences)
- Temporal logic (events happen in the right order)

**Watch for:**
- Skipped or omitted scenes
- Elements replaced with generic substitutes
- Out-of-order events
- Missing key actions or defining moments
- Style violations (e.g., supposed watercolor that looks digital)
- Incorrect spatial arrangements or camera work

**How to justify:**
- Name the specific prompt requirement
- Show how one response executes it vs. the other
- Use exact prompt language when relevant
- Compare both responses, don't just describe the winner

---

### 3. Visual Quality

**Question:** Which video has better visual quality?

**Evaluation criteria:**
- Per-frame sharpness and clarity
- Color accuracy and palette consistency
- Lighting direction and realism
- Anatomy and form stability (no warped subjects)
- Texture detail and richness
- Motion smoothness and fluidity
- Absence of visual artifacts

**Visual strengths to identify:**
- Sharp, clean rendering
- Realistic material properties (chrome, water, fabric, etc.)
- Consistent lighting throughout
- Rich texture detail (visible weaves, surfaces, grain)
- Cinematic composition
- Polished, immersive appearance
- Smooth animation without stuttering

**Visual weaknesses to flag:**
- Blurriness or soft focus
- Flat, low-contrast lighting
- Warped or distorted objects
- Loss of detail or texture
- Flickering or strobing
- Muddy or oversaturated colors
- Harsh or unnatural shadows
- Stiff or jerky motion
- Melting or morphing between frames

---

### 4. Audio Quality & Sync

**Question:** Which video has better audio and audio-visual sync?

**Audio assessment:**
- Clarity and lack of distortion
- Dynamic range (variation in volume/intensity)
- Freedom from artifacts (crackle, pops, cuts)
- Voice acting quality (if applicable)
- Sound effect quality and appropriateness

**Audio-visual sync assessment:**
- Lip-sync accuracy (if voices are present)
- Sound effects triggered by visual events
- Music or ambient sound matching the mood and timing
- Volume rising/falling with action intensity
- No delayed or out-of-sync audio cues

**Strengths to note:**
- Responsive soundscape that mirrors on-screen events
- Precise audio cues matching visual actions
- Clear, distinct sound without distortion
- Dynamic audio that builds with tension
- Seamless audio-visual integration

**Weaknesses to flag:**
- Generic, looping soundtrack without variation
- Missing audio cues for visual events
- Out-of-sync sound
- Muffled or unclear audio
- Jarring volume shifts
- No audio-visual relationship
- Distortion or audio artifacts
- Abrupt cuts or silence

---

### 5. Less AI Generated

**Question:** Which video looks less AI-generated?

**Common AI artifacts to watch for:**
- **Identity drift** — objects changing shape, appearance, or position inconsistently between frames
- **Plasticky textures** — surfaces that look fake, rubbery, or overly smooth
- **Uncanny smoothness** — motion that's too perfect or unnaturally fluid
- **Unnatural repetition** — the same element repeating identically (unrealistic)
- **Impossible geometry** — objects that violate physics or spatial logic
- **Background warping** — edges distorting, environments becoming unstable
- **Melting objects** — subjects losing definition or blending unnaturally
- **Object permanence failure** — objects changing or disappearing without reason
- **Structural glitches** — subjects losing solidity or deforming during movement
- **Inconsistent tracking** — subjects losing position or proportion between cuts

**Signs of authenticity:**
- Objects maintain consistent shape and structure throughout
- Subjects stay stable during complex actions
- Natural motion without uncanny perfection
- Background holds solid without distortion
- Texture varies naturally across surfaces
- Realistic physics and spatial relationships
- Style remains consistent without drift into digital filters
- Smooth transitions that respect continuity

**Defects to identify:**
- Warped anatomy or features
- Inconsistent subject identity
- Flickering between states
- Unnatural transitions
- Style drift
- Background edge artifacts
- Missing or phantom objects

---

## Common Defects Across All Tasks

**Always watch for:**
- Warped anatomy or distorted body parts
- Distorted or illegible text
- Flickering (frame-to-frame inconsistency)
- Identity drift (objects/subjects changing unexpectedly)
- Unrealistic motion (movement that violates physics)
- AI artifacts (plasticky textures, melting, impossible geometry)

**Don't penalize for:**
- Slight video length variations
- Cut-off endings (allow natural truncation)

---

## Justification Standards

✅ **Good justifications:**
- Explain why the chosen response wins on relevant dimensions
- Describe what the other response did worse, missed, or failed
- Use specific examples with timestamps or frame details
- Compare both responses, not just describe the winner
- Reference exact prompt requirements

❌ **Weak justifications:**
- Generic statements like "better quality" or "follows instructions"
- Descriptions of only the winning response
- Vague references without specific examples
- Ignoring what the losing response does wrong

---

## Evaluation Workflow

1. **Read the prompt** — Understand all requirements
2. **Enable audio** — Critical for fair evaluation
3. **Watch full videos** — At least once at normal speed
4. **Rewatch with inspection** — Pause, scrub, zoom into details
5. **Evaluate each dimension** — Use criteria above
6. **Make a judgment** — Even imperfect responses can be ranked
7. **Justify thoroughly** — Explain with specific examples
8. **Compare both** — Don't just describe the winner

---

## Response Format

For each evaluation question:
- **Choice:** Response A, Response B, Both Good, or Both Bad
- **Justification:** Evidence-based explanation (minimum meaningful length)
  - Why the chosen response is better on relevant dimensions
  - What the other response did worse, missed, or failed to follow
  - Specific examples rather than generic statements

---

## Tools for Inspection

- **Frame-by-frame playback** — Catch subtle artifacts
- **Pause and zoom** — Examine fine details closely
- **Volume adjustment** — Assess audio clarity
- **Timestamp notes** — Reference specific moments
- **Side-by-side comparison** — If videos allow pausing

---

## Do Not...

- ❌ Choose the prettier output if it fails the prompt
- ❌ Rush through the evaluation
- ❌ Make ties when one response is measurably better
- ❌ Use generic statements in justifications
- ❌ Describe only the winner without explaining the loser's faults
- ❌ Penalize for minor length variation or cut-off endings

---

## Remember

**Quality, not just aesthetics.** A technically polished video that ignores the prompt is worse than a rougher video that follows instructions precisely.

**Both matter.** Even if one response excels visually but fails instruction-following, both factors influence overall preference and must be weighed in justification.

**Be specific.** "The chrome dolphin arc in Response A clearly executes the vaporization event as specified, while Response B leaves the text unchanged" is infinitely better than "Response A is better."

---

## Additional Notes

- Avoid ties whenever possible — even if both have issues, one is typically stronger
- Do not copy-paste from the prompt or guidelines in your justification
- Spend meaningful time on evaluation — rushing misses critical details
- Audio is equally important as video — don't skip the sound assessment
