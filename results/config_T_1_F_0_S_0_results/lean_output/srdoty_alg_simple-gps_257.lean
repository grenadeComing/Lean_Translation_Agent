import Mathlib

/-- Let p(x) be an irreducible polynomial with rational coefficients, and let G = Gal(p) be its Galois group.
Then the complex roots of p(x) are expressible in terms of radicals if and only if G is a solvable group. -/
theorem solvable_galois_iff_radical_roots (p : ℚ[X]) (hp : Irreducible p) :
  let G := Gal p in
  IsSolvableGroup G ↔ IsSolvableByRadicals p := by sorry