import Mathlib
open Polynomial IntermediateField

/-- Let p(x) be an irreducible polynomial with rational coefficients, and let G = \mathrm{Gal}(p) be its Galois group. Then the complex roots of p(x) are expressible in terms of radicals if and only if G is a solvable group.

Save it to: srdoty_alg_simple-gps_257.lean -/
theorem isSolvable_iff_isRadical_tac_1513 (p : ℚ[X]) (hp : Irreducible p) : IsSolvable p.Gal ↔ IsRadical p := by sorry
