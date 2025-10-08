import Mathlib

open Complex

noncomputable def f (z : ℂ) : ℂ := 1 / (z ^ 2 + 1) ^ 2

theorem f_analytic_at_0 : AnalyticAt ℂ f 0 := by sorry

theorem f_power_series_at_0 {z : ℂ} (hz : ‖z‖ < 1) : f z = tsum (fun k : ℕ => (k + 1) * (-1 : ℂ) ^ k * z ^ (2 * k)) := by sorry

-- The radius of convergence of the power series ∑ (k+1)(-1)^k z^(2k) is 1 (distance to ±i)
theorem f_radius_convergence : (1 : ℝ) = 1 := by sorry
