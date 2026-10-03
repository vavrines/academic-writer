# Workflow: Reviewing and Revising Others' Drafts

Use this when the user has received a draft from a student or collaborator.
First establish the **mode**, because the outputs differ completely:

- **Feedback mode** — the author will revise; the user needs comments, a
  review report, or annotated text. Output: critique, not rewrites.
- **Revision mode** — the user is a co-author and will edit the draft
  directly. Output: edited text plus a change summary for the other authors.

Ask if it is not stated. When in doubt for a student's draft, default to
feedback mode — the learning value is in the student revising.

## Pass 1: Read for the big picture (before any line edits)

Read the whole draft once. Report only:

1. **The contribution as stated** — in one sentence. If you cannot produce
   this sentence, that is finding #1.
2. **The story arc** — problem → gap → idea → evidence → conclusion. Which
   links are missing or weak?
3. **Fatal issues** — anything that would get the paper desk-rejected or that
   invalidates results: unsupported central claims, missing baselines,
   methodological errors, wrong/overclaimed conclusions. Verify what you can;
   flag what you cannot verify with `[AUTHOR TO VERIFY]`.
4. **Audience/venue fit** — is the draft pitched at the right level for the
   target venue?

Do not line-edit yet. Polishing prose in a section that should be restructured
wastes everyone's time.

## Pass 2: Section-level review

Go section by section (use `structure.md` for what each section should do):

- **Abstract/intro**: does the stated contribution match what the body
  delivers? Is prior work positioned fairly (not strawmanned)?
- **Methods**: could a competent researcher in the field reproduce this from
  what is written? List what is missing (parameters, algorithms, data).
- **Results**: do the figures/tables support the claims made about them?
  Check claim-strength vs. evidence (principle 3 in SKILL.md). Note figures
  that are unreadable, unlabeled, or redundant.
- **Discussion/conclusion**: limitations acknowledged? Conclusions scoped to
  what was shown?
- **References**: completeness (seminal + recent), self-citation balance,
  any citations that look wrong or that you suspect are placeholders —
  flag for verification, never invent replacements.

## Pass 3: Language (only if asked, or in revision mode)

Apply `style-guide.md`. For a student's draft, fix representative instances
and *name the pattern* ("passive where actor matters", "over-hedged claims",
"comma splices") rather than silently fixing all 200 occurrences — the student
should learn the pattern. Preserve the author's voice and technical wording;
change technical terms only when they are wrong, and say so when you do.

## Output formats

**Feedback mode** → produce a review report (see
`templates/review-report.md`):

- **Summary**: 2–3 sentences, what the paper does and its main strength.
- **Major comments**: numbered, ordered by importance. Each: what the issue
  is, where it is (section/page), why it matters, and what would resolve it.
- **Minor comments**: numbered, line-level, terse.
- **Verdict for the user** (private note): is this close to submittable, or
  how many revision rounds do you estimate?

Tone: direct but constructive, addressed to help the author improve — not a
referee report designed to reject. Criticize the text, never the author.

**Revision mode** → produce:

- The edited draft (as a file or diff, respecting the project's format —
  track changes if the collaboration uses Word/Overleaf conventions; clean
  edits plus a summary otherwise).
- A **change log**: grouped list of edits with reasons, so co-authors can
  review what changed.
- A **questions-for-authors** list: every place where you could not resolve
  something without the author's knowledge, marked `[AUTHOR TO VERIFY]` in
  the text.

## Advising on process

When relevant, remind the user of good collaboration hygiene:

- Edits the student should make themselves vs. edits a co-author should just
  make (structural learning opportunities vs. mechanical fixes).
- Response-to-reviewers: if this is a journal revision, load
  `templates/response-to-reviewers.md` — every referee point needs an
  explicit, quoted response and a pointer to the change.
- Authorship/contribution disputes are out of scope for this skill; flag them
  to the user as matters to settle with the humans involved.
