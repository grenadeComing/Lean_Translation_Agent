import Mathlib

/-- Rudin Ex. 1.18(b) (k = 1 case).

We identify ℝ^1 with ℝ, and the dot product with multiplication. The correct statement
requires x ≠ 0: if x ≠ 0 then there is no nonzero y with x * y = 0. -/
theorem Rudin_exercise_1_18b (x : ℝ) (hx : x ≠ 0) : ¬∃ y : ℝ, y ≠ 0 ∧ x * y = 0 := by sorry
