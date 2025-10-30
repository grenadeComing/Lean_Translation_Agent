import Mathlib
open Polynomial

/-- Let p(x) be an irreducible polynomial with rational coefficients, and let G = Gal(p) be its Galois group. Then the complex roots of p(x) are expressible in terms of radicals iff G is a solvable group. -/
theorem isSolvable_iff_isRadical_tac_16265 (p : ℚ[X]) (hp : Irreducible p) : IsSolvable p.Gal ↔ IsRadical p := by
  sorry