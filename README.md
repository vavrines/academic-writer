# academic-writer

An [Agent Skills](https://agentskills.io)-compatible skill for AI coding
agents (Claude Code, Codex, and others that read `SKILL.md`), covering the
two scenarios of a researcher's writing life:

1. **Writing from scratch** — framing the contribution, outlining, drafting
   section by section, revision passes, pre-submission checks.
2. **Reviewing & revising others' drafts** — advisor-style feedback reports
   for students' manuscripts, or co-author revision passes with change logs,
   plus response-to-reviewers support.

Design highlights:

- **Progressive disclosure**: a short `SKILL.md` routes to workflow and
  reference files loaded only when needed.
- **Field-agnostic STEM core** with pluggable domain extensions
  (`references/domains/`, ships with one for computational
  math/physics/engineering).
- **Hard principles**: never fabricate citations or results, match claim
  strength to evidence, preserve the author's voice and notation.

## Layout

```
skills/academic-writer/
├── SKILL.md                        # entry point: scenario routing + principles
├── references/
│   ├── writing-workflow.md         # scenario 1: drafting your own paper
│   ├── reviewing-workflow.md       # scenario 2: feedback / revision modes
│   ├── structure.md                # what each section must do (IMRaD)
│   ├── style-guide.md              # academic English, incl. common ESL issues
│   ├── latex-conventions.md        # templates, macros, figures, .bib hygiene
│   ├── checklists.md               # pre-submission & review checklists
│   └── domains/
│       └── computational-science.md
└── templates/
    ├── paper-skeleton.tex
    ├── review-report.md
    └── response-to-reviewers.md
```

## Install

### Claude Code (plugin)

```sh
claude plugin marketplace add vavrines/academic-writer
claude plugin install academic-writer@academic-writer-marketplace
```

### Claude Code / Codex / generic agents (symlink install)

```sh
git clone https://github.com/vavrines/academic-writer.git
cd academic-writer
./install.sh                 # installs for claude, codex, and ~/.agents/skills
./install.sh claude          # or pick specific targets: claude | codex | agents
```

The script symlinks `skills/academic-writer` into `~/.claude/skills/`,
`~/.codex/skills/`, and `~/.agents/skills/`, so later updates are just a
`git pull`.

### Manual

Copy `skills/academic-writer/` into your agent's skills directory
(`~/.claude/skills/`, `~/.codex/skills/`, or a project's `.claude/skills/`).

## Usage

Once installed, the skill triggers automatically on requests like:

- "帮我规划/起草这篇论文的方法部分" / "draft the introduction for this paper"
- "review this draft from my student and write feedback"
- "revise this manuscript as a co-author and summarize the changes"
- "write the response to reviewers for this revision"

You can also invoke it explicitly (e.g. `/academic-writer` in Claude Code).

## Extending

Add your own field-specific guidance as
`skills/academic-writer/references/domains/<your-field>.md`, following the
format of `computational-science.md` (structure expectations, recurring
reviewer objections, notation rules, reproducibility requirements). Mention
it in `SKILL.md`'s reference map.

## License

MIT — see [LICENSE](LICENSE).
