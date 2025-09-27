import Mathlib


/-- Let R be a ring in which x^3 = x for every x in R. Prove that R is commutative. -/
theorem of_cube_eq_self (R : Type*) [Ring R] (h : ∀ x : R, x ^ 3 = x) : CommRing R := by sorry