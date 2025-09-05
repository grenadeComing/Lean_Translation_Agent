import Mathlib

/-!
Reverse triangle inequality for real numbers:
For all x, y in ℝ, | |x| - |y| | ≤ |x - y|.
-/

theorem abs_abs_sub_le_abs_sub (x y : ℝ) : abs (abs x - abs y) ≤ abs (x - y) := by sorry
