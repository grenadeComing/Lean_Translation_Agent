import Mathlib

/-
Exercise: If k = 1 and x ∈ ℝ^k with x ≠ 0, then there does not exist y ∈ ℝ^k such that y ≠ 0 but x · y = 0.
Interpreting ℝ^1 as ℝ with dot product being multiplication.
-/

theorem Rudin_exercise_1_18b (x : ℝ) (hx : x ≠ 0) : ∀ y : ℝ, x * y = 0 → y = 0 := by sorry
