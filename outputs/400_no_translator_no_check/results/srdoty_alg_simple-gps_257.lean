import Mathlib

open Polynomial

/-- Placeholder predicate: the complex roots of a polynomial are expressible in terms of radicals. -/
axiom roots_expressible_by_radicals : Polynomial ℚ → Prop

/-- Placeholder for the Galois group of a polynomial as a (possibly noncomputable) group. -/
axiom Galois_group : Polynomial ℚ → Type*
axiom Galois_group_group : ∀ p : Polynomial ℚ, Group (Galois_group p)
attribute [instance] Galois_group_group

/-- Main statement (translated): For an irreducible polynomial p ∈ ℚ[X], the complex roots
    of p are expressible in terms of radicals iff the Galois group of p is solvable. -/
theorem solvable_by_radicals_iff_solvable (p : Polynomial ℚ) (hp : Irreducible p) :
  roots_expressible_by_radicals p ↔ IsSolvable (Galois_group p) := by sorry
