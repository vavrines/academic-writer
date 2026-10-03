# Exemplar Papers (style baseline)

Three representative papers by the user. When drafting or revising, use them
as the baseline for logical organization, content structure, and phrasing —
as calibration, not a template to copy. The original LaTeX sources (figures not included) live in
`references/exemplars/` — grep or read them for concrete phrasing, math
notation, and LaTeX habits instead of guessing from memory.

| Paper | Venue | Source |
|---|---|---|
| Xiao & Frank, *A stochastic kinetic scheme for multi-scale plasma transport with uncertainty quantification* (2021) | J. Comput. Phys. 432, 110139 | `exemplars/xiao2021-plasma.tex` |
| Xiao & Frank, *RelaxNet: A structure-preserving neural network to approximate the Boltzmann collision operator* (2023) | J. Comput. Phys. 490, 112317 | `exemplars/xiao2023-relaxnet.tex` |
| Xiao, *Solving continuum and rarefied flows using differentiable programming* (2025) | J. Comput. Phys. 539, 114224 | `exemplars/xiao2025-differentiable.tex` |

The local sources above are normally sufficient — prefer them over fetching
external copies.

## Structural skeleton

For reference only — papers need not follow this exact shape; the right
structure depends on the topic, venue, and paper type. That said, all three
exemplars share the same arc, which works well for computational-science
journals:

1. **Introduction** — physical problem and its multiscale nature; what
   existing theory/numerics do at separate scales; the gap; "This paper
   addresses/develops …" contribution statement.
2. **Background theory** — the governing equations and existing models the
   paper builds on (kinetic theory, BGK-type models), notation established.
3. **The new method** — motivates from a structural observation (e.g.
   BGK relaxation ↔ ResNet), then constructs the method; theoretical
   properties *proven* (asymptotic-preserving, positivity, H-theorem).
4. **Solution algorithm / implementation** — update scheme, fluxes,
   training/sampling strategy; enough detail to reproduce.
5. **Numerical experiments** — one subsection per canonical benchmark
   (Landau damping, two-stream instability, Brio–Wu, shock structure,
   lid-driven cavity), each answering a specific question about the method.
6. **Conclusion** — short; what was shown, scope, outlook.

## Abstract pattern

Challenge ("… remains a formidable challenge") → what this paper addresses →
the key idea and why it works → theoretical guarantees ("We prove that…") →
numerical validation ("Numerical experiments, including …, are presented
to validate…") → availability of open-source code where applicable.

## How to use these

- **Writing**: when outlining or drafting in this area, check the
  corresponding exemplar's section organization and level of detail; match
  the register and typical phrasing of its prose.
- **Reviewing**: when a student/collaborator draft is in this area, compare
  its storyline and section roles against the skeleton above — deviations
  aren't automatically wrong, but should be deliberate.
- Don't force fit: different venues (conferences, letters) or paper types
  (review, short communication) call for different structures.
