import Mathlib

open Real

noncomputable section

/-- The function f(x) = 1 / (x^2 + 1). -/
def f (x : ℝ) : ℝ := (1 : ℝ) / (x ^ 2 + 1)

/-- Power series expansion at 0: for |x| < 1 we have 1/(1 + x^2) = Σ (-1)^n x^(2n). -/
theorem f_power_series_at_zero (x : ℝ) (h : |x| < 1) :
  f x = tsum (fun n : ℕ => (-1 : ℝ) ^ n * x ^ (2 * n)) := by sorry

/-- f is analytic at 0: there exists r > 0 (one can take r = 1) such that the power series
    above represents f on (-r, r). -/
theorem f_is_analytic_at_zero :
  ∃ r : ℝ, 0 < r ∧ ∀ x, |x| < r → f x = tsum (fun n : ℕ => (-1 : ℝ) ^ n * x ^ (2 * n)) := by
  sorry

/-- Radius of convergence statement: the series converges for |x| < 1 and does not converge
    for |x| > 1 (hence the radius of convergence is 1). -/
theorem radius_of_convergence :
  (∀ x : ℝ, |x| < 1 → Summable (fun n : ℕ => (-1 : ℝ) ^ n * x ^ (2 * n))) ∧
  (∀ x : ℝ, 1 < |x| → ¬ Summable (fun n : ℕ => (-1 : ℝ) ^ n * x ^ (2 * n))) := by
  sorry

end noncomputable section