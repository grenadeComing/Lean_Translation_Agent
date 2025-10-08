import Mathlib

/--
Bound on the complex sine by an exponential of the complex modulus.
-/
theorem abs_sin_le_half_exp_abs (z : ℂ) : |Complex.sin z| ≤ (1 / 2 : ℝ) * Real.exp (|z|) := by sorry

/--
Bound on the complex cosine by an exponential of the complex modulus.
-/
theorem abs_cos_le_half_exp_abs (z : ℂ) : |Complex.cos z| ≤ (1 / 2 : ℝ) * Real.exp (|z|) := by sorry
