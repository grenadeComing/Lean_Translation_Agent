import Mathlib

open Polynomial

/-- Let p(x) be an irreducible polynomial with rational coefficients, and let
G = Gal(p) be its Galois group. Then the complex roots of p(x) are
expressible in terms of radicals iff G is a solvable group. -/
theorem galois_group_solvable_iff_roots_solvable_by_radicals (p : ℚ[X]) (hp : Irreducible p) :
  IsSolvable (GaloisGroup p) ↔ is_solvable_by_radical p := by sorry
