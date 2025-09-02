import Mathlib

open Quaternion

/-- Show that there is an infinite number of solutions to x^2 = -1 in the quaternions. -/
theorem quaternion_infinite_solutions_sq_eq_neg_one : Set.Infinite { q : Quaternion ℝ | q * q = (-1 : Quaternion ℝ) } := by sorry
