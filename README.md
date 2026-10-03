# academic-writer

An [Agent Skills](https://agentskills.io)-compatible skill for AI coding
agents (Claude Code, Codex, and others that read `SKILL.md`), covering the
two scenarios of a researcher's writing life:

1. **Writing from scratch** — framing the contribution, outlining, drafting,
   revision passes.
2. **Reviewing & revising others' drafts** — advisor-style feedback reports
   for students' manuscripts, or co-author revision passes with change logs.

Deliberately kept small: a short `SKILL.md` states the core principles and
routes to one of two workflow files. The skill only carries what an LLM
doesn't already know — the discipline of a single storyline, feedback vs.
revision modes — not generic language advice. Grow it from real writing
sessions rather than upfront specification.

## Layout

```
skills/academic-writer/
├── SKILL.md                  # entry: scenario routing + core principles
└── references/
    ├── writing.md            # scenario 1: drafting your own paper
    ├── reviewing.md          # scenario 2: feedback / co-author revision
    ├── exemplars.md          # representative papers as style baseline
    └── exemplars/            # original LaTeX sources of those papers
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

## Updating

How an installed skill picks up new commits depends on how it was installed:

- **Symlink install** (`./install.sh`): the skills directory points at your
  clone, so just run `git pull` in the repo — no reinstall needed.
- **Claude Code plugin**: refresh the marketplace and update the plugin:
  ```sh
  claude plugin marketplace update academic-writer-marketplace
  claude plugin update academic-writer@academic-writer-marketplace
  ```
- **Manual copy**: copy the updated `skills/academic-writer/` over the old
  one (or switch to `./install.sh` so future updates are a `git pull`).

In all cases, start a new agent session for the change to take effect —
already-running sessions keep the skill content they loaded at start.

## Usage

Once installed, the skill triggers automatically on requests like:

- "帮我规划/起草这篇论文的方法部分" / "draft the introduction for this paper"
- "review this draft from my student and write feedback"
- "revise this manuscript as a co-author and summarize the changes"

You can also invoke it explicitly (e.g. `/academic-writer` in Claude Code).

## Extending

When recurring needs show up in practice, add short notes to the relevant
file in `references/`, or a new file there (e.g. domain-specific guidance)
and list it in `SKILL.md`.

## License

MIT — see [LICENSE](LICENSE).
