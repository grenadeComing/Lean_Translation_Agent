import Mathlib

open Complex

noncomputable section

/-- The function f(x) = e^x * cos x as a real-valued function. -/
def f (x : ℝ) : ℝ := Real.exp x * Real.cos x

/-- f is real-analytic (analytic on ℝ). -/
theorem f_is_analytic : AnalyticOn ℝ f univ := by sorry

/-- Power series expansion at 0: the coefficient a_n = Re((1 + I)^n / n!).
    Thus f(x) = ∑'_{n ≥ 0} Re((1+I)^n / n!) * x^n for all real x. -/
theorem f_power_series_at_zero :
  ∀ x : ℝ, f x = ∑' n : ℕ, (Complex.re (((1 : ℂ) + Complex.I) ^ n / (n! : ℂ))) * x ^ n := by sorry

/-- The above power series converges for every real x (radius of convergence = ∞). -/
theorem f_power_series_summable_everywhere :
  ∀ x : ℝ, Summable (λ n : ℕ => (Complex.re (((1 : ℂ) + Complex.I) ^ n / (n! : ℂ))) * x ^ n) := by sorry

end noncomputable section