import Mathlib

open Complex

/-- The function f(z) = 1/(1 + z^2)^2. -/
def f (z : ℂ) : ℂ := (1 : ℂ) / (1 + z ^ 2) ^ 2

/-- f is holomorphic on the open unit disc. -/
theorem f_is_holomorphic_on_unit_ball : IsHolomorphicOn f (ball (0 : ℂ) 1) := by sorry

/-- Power series expansion at 0: for |z| < 1,
    f z = ∑'_{n=0}^∞ (n+1) * (-1)^n * z^(2n). -/
theorem f_power_series_at_zero (z : ℂ) (hz : |z| < 1) :
  f z = ∑' n : ℕ, (n + 1) * ((-1 : ℂ) ^ n) * z ^ (2 * n) := by sorry

/-- The radius of convergence of the above power series is 1, equivalently
    the power series converges exactly for |z| < 1. -/
theorem power_series_converges_iff (z : ℂ) :
  Summable (fun n => (n + 1) * ((-1 : ℂ) ^ n) * z ^ (2 * n)) ↔ |z| < 1 := by sorry
