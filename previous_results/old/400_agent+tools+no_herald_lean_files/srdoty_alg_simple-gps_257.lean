import Mathlib

universe v u

/-
We state the classical Galois-theoretic criterion for solvability by radicals.
Here we formulate the statement abstractly: k is a field (intended to be ℚ),
 p is an irreducible polynomial over k, Gal assigns to each polynomial its
 Galois group (as a type endowed with a Group instance), and
 `expressible_by_radicals` is a predicate saying the roots of a polynomial
 are expressible by radicals.

This file records the equivalence (without proof): the roots of p are
 expressible by radicals iff the Galois group Gal p is solvable.
-/

variable {k : Type u} [Field k]

variable (Gal : Polynomial k → Type v)
variable [∀ p, Group (Gal p)]

variable (expressible_by_radicals : ∀ p : Polynomial k, Prop)

theorem polynomial_roots_expressible_by_radicals_iff_solvable
  {p : Polynomial k} (hp : Irreducible p) :
  IsSolvable (Gal p) ↔ expressible_by_radicals p := by
  sorry
