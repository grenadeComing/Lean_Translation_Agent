import Mathlib

open Complex

theorem complex_abs_add_sq (a b : Complex) : (abs (a + b)) ^ 2 = (abs a) ^ 2 + (abs b) ^ 2 + 2 * re (a * conj b) := by sorry
