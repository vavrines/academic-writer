# Workflow: Writing a Paper from Scratch

Use this when the user is authoring their own manuscript. The stages below are
ordered, but let the user enter at any stage — someone with a rough draft does
not need topic selection.

## Stage 0: Frame the paper (before any drafting)

Ask or extract:

- **Venue**: target journal/conference? This drives length, structure, style,
  and (if applicable) which domain extension to load.
- **Contribution**: what is the *one sentence* a reviewer should remember?
  Push until it is specific — "we improve X" is not a contribution;
  "a 3rd-order scheme for X that remains positivity-preserving on unstructured
  meshes, reducing cost by 40% vs. Y" is.
- **Audience**: specialists in the subfield, or the broader readership of the
  journal? This sets how much background the introduction must carry.
- **Status of results**: are the experiments/proofs complete? Never draft a
  Results section around placeholder data — mark gaps explicitly instead.

If any of these is missing, help the user settle it before writing prose.

## Stage 1: Skeleton first

1. Load `structure.md` and, if relevant, the matching file in `domains/`.
2. Build a section-level outline. For each section, write one line stating its
   job and its key content (not prose yet).
3. For the Results/Methods sections: enumerate the claims and map each to its
   evidence (figure, table, theorem, experiment). A claim without planned
   evidence is a red flag — surface it now.
4. Get the user's sign-off on the outline before drafting. This is the cheapest
   point to restructure.

## Stage 2: Draft section by section

Recommended order (write the core first, the framing last):

1. Methods / approach
2. Results (with figures/tables planned or sketched first)
3. Introduction
4. Related work
5. Abstract and title (last — they must describe the paper that exists,
   not the paper that was planned)

Rules while drafting:

- One idea per paragraph; first sentence states the paragraph's point.
- Concrete over abstract: name the method, the equation, the number.
- Mark every unverifiable factual claim: `[CITATION NEEDED: ...]` or
  `[VERIFY: ...]`. Never silently invent a reference or a number.
- Keep notation consistent with whatever the user has established. If the
  draft introduces new notation, collect it in a notation table or note.

## Stage 3: Revision passes

Do these as separate passes — mixing them produces shallow edits:

1. **Structure pass**: does each section do its job (per `structure.md`)?
   Is anything in the wrong section? Is the story arc (problem → gap → idea →
   evidence → impact) intact?
2. **Argument pass**: claim-by-claim, is each supported? Are limitations
   acknowledged where a reviewer will find them anyway?
3. **Language pass**: apply `style-guide.md`. Tense, hedging, concision,
   paragraph flow. Do not flatten the user's voice.
4. **Mechanics pass**: notation consistency, figure/table references,
   citation completeness, abbreviations defined at first use.

Present each pass as a diff or an itemized list the user can accept/reject
piecewise.

## Stage 4: Pre-submission

Run the pre-submission checklist in `checklists.md` and produce its output as
a report, not silent fixes.

## Working mode

- Confirm the venue early; many decisions (abstract length, section naming,
  citation style) follow from it.
- When the user pastes a paragraph for help, fix the specific problem they
  asked about first, then mention at most 2–3 higher-priority issues you
  noticed. Do not deliver an unsolicited full critique of a paragraph they
  only wanted reworded.
- Large deliverables (full drafts, major restructures) should land as files in
  the project, not as chat output.
