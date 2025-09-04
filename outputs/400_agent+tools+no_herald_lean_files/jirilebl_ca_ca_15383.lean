import Mathlib

/-!
Simple bounds for complex sine and cosine:
|sin z| ≤ 1/2 e^{|z|} and |cos z| ≤ 1/2 e^{|z|}.
-/

theorem jirilebl_ca_ca_15383_sin (z : Complex) : Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry

theorem jirilebl_ca_ca_15383_cos (z : Complex) : Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by
  sorry
