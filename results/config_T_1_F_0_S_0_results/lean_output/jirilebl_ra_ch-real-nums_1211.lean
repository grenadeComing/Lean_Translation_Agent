import Mathlib

/-- Reverse triangle inequality: for real numbers x, y,
    | |x| - |y| | ≤ |x - y|. -/
lemma abs_abs_sub_abs_le_abs_sub (x y : ℝ) : abs (abs x - abs y) ≤ abs (x - y) := by sorry