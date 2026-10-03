# LaTeX Conventions for Manuscripts

## Project layout

- Prefer the venue's official class/template (`elsarticle`, `siamart`,
  `IEEEtran`, `revtex`, `acmart`, …). Never reinvent journal formatting.
- One file per section (`sections/intro.tex`, …) with `\input{}` from
  `main.tex` once the paper exceeds a few pages — essential for co-author
  diffs and git.
- `\label` naming: `sec:intro`, `eq:scheme`, `fig:convergence`,
  `tab:errors`, `alg:update`, `thm:stability`. Always reference via
  `\cref`/`\ref`, never hardcode numbers.
- Use `cleveref` (load last) for consistent "Eq. (3), Fig. 2, Section 4"
  rendering.

## Math

- Define macros for repeated notation *at the top*: `\newcommand{\R}{\mathbb{R}}`,
  `\newcommand{\bu}{\mathbf{u}}`. One macro file shared across the project.
- Display math for anything referenced or important; inline for short
  relations. Punctuate equations — they are part of the sentence.
- Number only equations that are referenced later (venue permitting).
- Never change an author's macro definitions or symbol choices silently when
  editing; notation changes must be agreed.

## Figures and tables

- Vector graphics (PDF) for plots; raster (PNG, ≥300 dpi) only for images.
  No screenshots of plots.
- Figure text (axis labels, legends) must remain legible when scaled to
  column width — check at 100% print size, not on screen.
- Every figure: axis labels with units, legend if >1 curve, caption that
  stands alone (reader should understand the figure without the text).
- Tables: `booktabs` style (`\toprule`, `\midrule`, `\bottomrule`), no
  vertical rules, no excessive horizontal rules. Units in column headers.

## Bibliography

- BibTeX/BibLaTeX only — never hand-formatted references.
- One `.bib` file per project (or per paper for collaborations), entries
  with consistent keys: `smith2021fast`.
- Entry hygiene: full author lists (venue permitting), page numbers, DOI,
  protected capitalization in titles (`{K}inetic {T}heory`), no duplicate
  or near-duplicate entries.
- Cite with context: `\cite{smith2021fast}` after a clause, not sprinkled
  mid-sentence. Group related citations.
- Verify every entry you touch actually exists; if you cannot resolve one,
  flag it — do not guess metadata.

## Collaboration hygiene

- Compile cleanly: zero errors, and triage warnings (undefined references,
  overfull hboxes in the final pass).
- For co-author revision rounds, agree on a convention and state it in the
  change log: `\changes`/todo package, colored text (`\textcolor{blue}{...}`)
  with a defined meaning per color, or git diffs. Do not mix.
- Comments in source: `% TODO(authorname): ...` for actionable items;
  `% NOTE: ...` for explanations. Resolve or carry TODOs before submission.
- If the project lives on Overleaf + git, keep commits small and compilable.

## Common mechanical errors to catch when editing

- Unreferenced figures/tables/equations; references to non-existent labels.
- Inconsistent notation between sections (same symbol, two meanings).
- Abbreviations defined twice or never.
- `\cite` to entries missing from the `.bib`, or unused `.bib` entries
  signaling a dropped citation.
- Straight quotes instead of `` '' ``; hyphen vs. en-dash vs. em-dash misuse
  (`--` for ranges, `---` for breaks).
