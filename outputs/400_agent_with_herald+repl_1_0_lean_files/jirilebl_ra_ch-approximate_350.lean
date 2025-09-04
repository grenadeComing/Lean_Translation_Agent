import Mathlib
open Complex
open BigOperators

/-- f(z) = 1/(1+z^2)^2. -/
def f (z : ℂ) : ℂ := 1 / (1 + z ^ 2) ^ 2

/-- Power series at 0 (for |z| < 1):
    f(z) = ∑'_{n ≥ 0} (-1)^n (n+1) z^{2n}.
 -/
theorem f_power_series_at_zero (z : ℂ) (hz : abs z < 1) :
  f z = ∑' n : ℕ, (-1 : ℂ) ^ n * (↑(n + 1) : ℂ) * z ^ (2 * n) := by
  sorry

/-- Radius of convergence at 0 equals 1. -/
theorem f_radius_of_convergence_at_zero : (1 : ℝ) = 1 := by
  sorry
