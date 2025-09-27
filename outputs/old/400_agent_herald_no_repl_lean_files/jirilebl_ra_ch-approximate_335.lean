import Mathlib

/-!
Let f(z) = 1 / (z^2 + 1).
We state (without proof) the power series expansion at 0, analyticity, and analyticity on the open ball of radius 1.
-/

open Complex

/-- Power series expansion at 0: for complex z with |z| < 1,
    1 / (1 + z^2) = sum_{n=0}^\infty (-1)^n z^{2n}. -/
theorem f_power_series_at_zero (z : ℂ) (hz : abs z < 1) : (1 : ℂ) / (z ^ 2 + 1) = ∑' (n : ℕ), (-1 : ℂ) ^ n * z ^ (2 * n) := by sorry

/-- f is analytic at 0. -/
theorem f_is_analytic_at_zero : IsAnalyticAt (fun z : ℂ => 1 / (z ^ 2 + 1)) 0 := by sorry

/-- f is analytic on the open ball of radius 1 around 0 (equivalently, the power series at 0
    has radius of convergence 1). -/
theorem f_is_analytic_on_ball_one : IsAnalyticOn (fun z : ℂ => 1 / (z ^ 2 + 1)) (Metric.ball (0 : ℂ) 1) := by sorry
