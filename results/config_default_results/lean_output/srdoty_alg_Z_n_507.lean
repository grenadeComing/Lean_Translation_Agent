import Mathlib

/-- Let R be a ring and let a,b in R. Show that a(-b) = -(ab) = (-a)b. -/
theorem neg_mul_extracted [Ring R] (a b : R) : a * -b = -(a * b) ∧ -(a * b) = (-a) * b := by sorry
