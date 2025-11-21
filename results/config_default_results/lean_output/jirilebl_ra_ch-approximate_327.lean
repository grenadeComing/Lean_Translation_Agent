import Mathlib

noncomputable section

/-- Define f(x) = e^x * cos x as a real function. -/
noncomputable def f (x : ℝ) : ℝ := Real.exp x * Real.cos x

/-- Coefficients of the Taylor series at 0: a_n = Re ((1 + I)^n / n!). -/
noncomputable def f_coeff (n : ℕ) : ℝ :=
  Complex.re ((1 + Complex.I) ^ n / (Nat.factorial n : ℂ))

/-- f is the real part of the entire function z ↦ exp((1+I) z). -/
theorem f_eq_re_complex_exp (x : ℝ) : f x = Complex.re (Complex.exp ((1 + Complex.I) * (x : ℂ))) := by sorry

/-- f is analytic at 0. -/
theorem f_analytic_at_zero : AnalyticAt ℝ f 0 := by sorry

end
