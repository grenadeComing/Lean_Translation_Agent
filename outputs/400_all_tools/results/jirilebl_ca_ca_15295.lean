import Mathlib

/-- For any complex number z we have |sinh z| ≤ (1/2) * exp(|z|). -/
theorem norm_sinh_le (z : ℂ) : ‖Complex.sinh z‖ ≤ (1 / 2) * Real.exp ‖z‖ := by sorry

/-- For any complex number z we have |cosh z| ≤ (1/2) * exp(|z|). -/
theorem norm_cosh_le (z : ℂ) : ‖Complex.cosh z‖ ≤ (1 / 2) * Real.exp ‖z‖ := by sorry
