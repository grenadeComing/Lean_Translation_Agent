import Mathlib

/-!
Let f(z) = 1 / (1 + z^2).
We state that f is analytic at 0, give its power series at 0, and state the radius of convergence.
-/

open Complex

/-- f is analytic at 0 (as a function ℂ → ℂ). -/
theorem is_analytic_at_one_div_one_add_sq : IsAnalyticAt (fun z : ℂ => (1 : ℂ) / (1 + z ^ 2)) 0 := by sorry

/-- For |z| < 1, the geometric-type expansion holds: 1/(1+z^2) = Σ_{n ≥ 0} (-1)^n z^{2n}. -/
theorem one_div_one_add_sq_tsum {z : ℂ} (hz : abs z < 1) : (1 : ℂ) / (1 + z ^ 2) = ∑' n : ℕ, (-1 : ℂ) ^ n * z ^ (2 * n) := by sorry

/-- The above power series converges (absolutely) for |z| < 1 and does not converge for |z| > 1,
    so the radius of convergence of the power series is 1. -/
theorem power_series_radius_one :
  (∀ z : ℂ, abs z < 1 → Summable (fun n => (-1 : ℂ) ^ n * z ^ (2 * n))) ∧
  (∀ z : ℂ, 1 < abs z → ¬ Summable (fun n => (-1 : ℂ) ^ n * z ^ (2 * n))) := by sorry
