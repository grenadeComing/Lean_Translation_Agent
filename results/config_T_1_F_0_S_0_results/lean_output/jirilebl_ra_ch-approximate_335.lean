import Mathlib

/-- The function f(x) = 1/(x^2+1) as a real function. -/
def f (x : ℝ) : ℝ := 1 / (x ^ 2 + 1)

/-- Coefficients of the power series for 1/(1 + x^2) at 0: a_{2n} = (-1)^n, a_{2n+1} = 0. -/
def a (n : ℕ) : ℝ := if n % 2 = 0 then (-1 : ℝ) ^ (n / 2) else 0

/-- For |x| < 1 we have the power series expansion f(x) = Σ_{n≥0} a_n x^n. -/
theorem f_power_series_at_zero (x : ℝ) (h : |x| < 1) : f x = ∑' (n : ℕ), a n * x ^ n := by sorry

/-- The radius of convergence of the power series with coefficients a_n equals 1. -/
theorem radius_of_convergence_a : radius_of_convergence a = 1 := by sorry