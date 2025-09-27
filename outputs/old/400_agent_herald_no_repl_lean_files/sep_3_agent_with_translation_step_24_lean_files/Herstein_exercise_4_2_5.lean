import Mathlib

/-- If every element of a ring R satisfies x^3 = x, then R is commutative. -/
def herstein_exercise_4_2_5 {R : Type _} [Ring R] (h : ∀ x : R, x ^ 3 = x) : CommRing R := by sorry
