import Mathlib

/- Rudin Exercise 1.13
   If x, y are complex, prove that ||x|-|y|| ≤ |x-y|. -/

theorem rudin_exercise_1_13 (x y : ℂ) : abs (Complex.abs x - Complex.abs y) ≤ Complex.abs (x - y) := by sorry
