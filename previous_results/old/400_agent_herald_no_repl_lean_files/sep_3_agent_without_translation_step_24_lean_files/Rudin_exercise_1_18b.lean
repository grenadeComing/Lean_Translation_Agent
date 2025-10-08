import Mathlib

/-
Rudin, Principles of Mathematical Analysis - Exercise 1.18(b)
For k = 1, there are no two nonzero vectors in R^1 that are orthogonal.
Translated: for real numbers x and y, if x ≠ 0 and y ≠ 0 then x * y ≠ 0.
-/

theorem Rudin_exercise_1_18b {x y : ℝ} (hx : x ≠ 0) (hy : y ≠ 0) : x * y ≠ 0 := by sorry
