import Mathlib

open Complex

/-- For any complex number z, the modulus of sinh z is bounded by (1/2) e^{|z|}. -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) : ‖sinh z‖ ≤ (1 / 2) * Real.exp ‖z‖ := by sorry

/-- For any complex number z, the modulus of cosh z is bounded by (1/2) e^{|z|}. -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) : ‖cosh z‖ ≤ (1 / 2) * Real.exp ‖z‖ := by sorry
