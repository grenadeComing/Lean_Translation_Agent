import Mathlib

/-!
Statement (formalized):
Let p(x) be an irreducible polynomial with rational coefficients, and let G = Gal(p) be its Galois group.
Then the complex roots of p(x) are expressible in terms of radicals iff G is a solvable group.

Remarks: We introduce abstract predicates/constants to represent the notions "expressible in radicals"
and the Galois group construction, and the predicate `IsSolvable` for a group. This file records the
logical statement (without proof) in a form compatible with Mathlib imports.
-/

open Polynomial

universe u

/-- Predicate: a polynomial over ℚ is expressible in terms of radicals (by adjoining successive
    nth-roots to ℚ one obtains a field containing its complex roots). -/
constant ExpressibleInRadicals : Polynomial ℚ → Prop

/-- The Galois group of an (irreducible) polynomial over ℚ. -/
constant Gal : Polynomial ℚ → Type u

/-- Predicate expressing that a group (type) is solvable. -/
constant IsSolvable : (G : Type u) → Prop

/-- Main equivalence: an irreducible rational polynomial is solvable by radicals iff its Galois
    group is solvable. -/
theorem polynomial_roots_expressible_in_radicals_iff_galois_group_solvable
  (p : Polynomial ℚ) (hp : Irreducible p) :
  ExpressibleInRadicals p ↔ IsSolvable (Gal p) := by sorry
