# Domain Extension: Computational Mathematics, Physics & Engineering

Extends the generic guidance for papers on numerical methods, simulation, and
computational modeling (SIAM-style journals, JCP, CMAME, JCP/CiCP, physics
journals with computational content, etc.). Where this file and the generic
guidance conflict, this file wins.

## Structure expectations

- **Method section** must include, as applicable: governing equations with
  assumptions, discretization (space/time), algorithm steps (a pseudocode
  `algorithm` environment is standard), boundary/initial conditions,
  implementation notes (language, libraries, hardware) if performance is
  claimed.
- **Results section** is organized by *test cases*, each with a question it
  answers. Standard test-case types and what reviewers expect:
  - **Accuracy/convergence test**: problem with known exact or reference
    solution; error table + observed order of accuracy vs. mesh/time-step
    refinement. The order should match theory or the discrepancy must be
    explained.
  - **Property tests**: conservation, positivity/bound preservation,
    entropy stability, asymptotic preservation — demonstrated, not asserted.
  - **Benchmark tests**: the canonical problems of the subfield (lid-driven
    cavity, Sod shock tube, double shear layer, …). Skipping the canonical
    benchmarks needs justification.
  - **Application showcase**: the physically interesting case; clearly
    separated from validation.
- **Theory** (if present): stability/consistency analysis stated with
  assumptions; link each theorem to where the numerics confirm it.

## Recurring reviewer objections — check proactively

1. "No comparison with existing methods" — accuracy *and* cost vs. at least
   one established method on the same problem, same hardware for timing.
2. "Errors reported without a reference solution's provenance" — state where
   reference data comes from (exact solution, fine-grid computation,
   published data with citation).
3. "One grid, one parameter set" — robustness requires variation; if a
   parameter is tuned, say how.
4. "CPU time without implementation details" — hardware, compiler, threads,
   language, or timing comparisons are meaningless.
5. "Figures that don't show the claimed effect" — e.g. claiming high-order
   accuracy from a solution plot instead of an error table.
6. Confusing *accuracy order* with *quality*; a 2nd-order solution can beat a
   5th-order one on coarse grids — discuss resolution per cost.
7. Nondimensionalization absent or inconsistent; report physical units or
   dimensionless groups (Re, Ma, Kn, CFL, …).

## Notation discipline (higher stakes than average)

- Scalars vs. vectors vs. tensors must be typographically distinct and
  consistent (`u`, `\mathbf{u}`, `\mathsf{U}` per the project's convention).
- Index conventions stated once (Einstein summation? range of i?); mesh
  indices vs. time levels distinguished (`u_i^n` style).
- Norms named at first use: `\| \cdot \|_2`, `\| \cdot \|_{L^1(\Omega)}`.
- A notation table is welcome for symbol-heavy papers.

## Reproducibility

- Code/data availability statement is increasingly required — flag early in
  Stage 0 of the writing workflow if the venue mandates it.
- Versions: cite software with versions (and archives like Zenodo DOI for
  the authors' own code).
- Random seeds / statistical variability reported for stochastic methods.

## Figures specific to this field

- Convergence plots: log-log, reference slopes drawn, legends readable.
- Solution plots: colorblind-safe palettes, consistent colorbars across
  compared figures, contour levels stated.
- Meshes: show the mesh (or a zoom) when adaptivity/unstructured grids matter.
