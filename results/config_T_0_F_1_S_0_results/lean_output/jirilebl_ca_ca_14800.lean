import Mathlib

/-- For z ∈ ℂ, |sinh z| ≤ (1/2) e^{|z|}. -/
theorem abs_sinh_le_half_exp_abs (z : ℂ) : Real.sqrt ((Complex.sinh z).re ^ 2 + (Complex.sinh z).im ^ 2) ≤ (1 / 2) * Real.exp (Real.sqrt (z.re ^ 2 + z.im ^ 2)) := by sorry

/-- For z ∈ ℂ, |cosh z| ≤ (1/2) e^{|z|}. -/
theorem abs_cosh_le_half_exp_abs (z : ℂ) : Real.sqrt ((Complex.cosh z).re ^ 2 + (Complex.cosh z).im ^ 2) ≤ (1 / 2) * Real.exp (Real.sqrt (z.re ^ 2 + z.im ^ 2)) := by sorry
