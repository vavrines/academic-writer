# Checklists

Run these as reports the user can act on — list pass/fail per item with a
pointer to the location, not silent fixes.

## Pre-submission checklist (writing scenario)

**Fit and framing**
- [ ] Title/abstract match the paper as finished (not as planned)
- [ ] Contribution claim is specific and appears in abstract + intro
- [ ] Target venue's format, length limits, and section requirements met
- [ ] Keywords and subject classifications chosen (if required)

**Argument**
- [ ] Every claim in abstract/intro/conclusion is backed in the body
- [ ] Baselines/comparisons against the relevant state of the art
- [ ] Limitations stated; conclusions scoped to evidence
- [ ] No orphan claims (`[CITATION NEEDED]`, `[VERIFY]` markers resolved)

**Technical content**
- [ ] Methods reproducible from the text (parameters, data, code refs)
- [ ] Notation consistent throughout; all symbols defined
- [ ] Figures legible at print size; captions stand alone; units present
- [ ] Tables: booktabs style, units in headers
- [ ] Numbers: consistent precision, uncertainties where relevant

**Mechanics**
- [ ] All abbreviations defined at first use (abstract + body)
- [ ] Every figure/table/equation referenced in text; all refs resolve
- [ ] Bibliography: no missing/duplicate/unverified entries
- [ ] Compiles with no errors; warnings triaged
- [ ] Acknowledgments/funding/conflicts per venue rules
- [ ] Anonymization requirements met (if double-blind)

**Ethics**
- [ ] No fabricated or unverifiable citations
- [ ] Prior work cited fairly (including the likely reviewers' work)
- [ ] Data/code availability statement if venue requires
- [ ] AI-assistance disclosure if venue requires it

## Review checklist (reviewing scenario — mirrors referee criteria)

**Major**
- [ ] Contribution identifiable in one sentence; stated in abstract + intro
- [ ] Story arc intact: problem → gap → idea → evidence → conclusion
- [ ] Central claims supported by the evidence shown
- [ ] Methods reproducible; nothing essential hidden in appendix
- [ ] Comparison to state of the art is present and fair
- [ ] No fatal errors (wrong derivations, invalid methodology, overclaiming)

**Minor**
- [ ] Section organization per `structure.md`
- [ ] Figure/table quality and referencing
- [ ] Language issues — patterns named, representative instances fixed
- [ ] Notation/abbreviation consistency
- [ ] References: completeness, correctness flags, self-citation balance

**Report quality (for the review itself)**
- [ ] Major comments ordered by importance, each with location + fix
- [ ] Criticism aimed at the text, constructive in tone
- [ ] Private verdict to the user: estimated revision rounds to submittable
