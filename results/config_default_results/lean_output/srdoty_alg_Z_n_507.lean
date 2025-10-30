import Mathlib
-- Statement: Let R be a ring and a,b ∈ R. Show that a(-b) = -(ab) = (-a)b.
 theorem neg_mul_extracted [Ring R] (a b : R) : a * -b = -(a * b) ∧ (-a) * b = -(a * b) := by sorry
