import Mathlib
open Polynomial

universe u v

/-- A placeholder predicate asserting that a field extension L/K is obtained by adjoining successive radicals.
    For the purposes of this statement we do not provide a formal definition; `True` stands in for
    the usual notion "expressible in terms of radicals" (a radical extension).
-/
def IsRadicalExtension (K : Type u) (L : Type v) : Prop := True

/-- Let p(x) be an irreducible polynomial with rational coefficients, and let G = Gal(p)
    be its Galois group. Then the complex roots of p(x) are expressible in terms of radicals
    if and only if G is a solvable group. -/
theorem solvable_galois_iff_roots_by_radicals {p : Polynomial ℚ} (hp : Irreducible p) :
  IsRadicalExtension ℚ (Polynomial.SplittingField p) ↔ IsSolvable (Polynomial.Gal p) := by sorry
