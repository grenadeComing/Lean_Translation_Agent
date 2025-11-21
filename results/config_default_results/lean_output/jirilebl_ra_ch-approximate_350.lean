import Mathlib

/-- Let f(x) = 1/(x^2+1)^2. Statement: the function has the power series expansion
    f(x) = ∑_{n=0}^∞ (-1)^n (n+1) x^{2n} for |x|<1, and the radius of convergence is 1. -/
theorem f_is_analytic_and_power_series :
  (forall x : ℝ, abs x < 1 → (1 / (x ^ 2 + 1) ^ 2) = tsum (fun n => (-1 : ℝ) ^ n * (n + 1) * x ^ (2 * n))) ∧
  (forall x : ℝ, Summable (fun n => (-1 : ℝ) ^ n * (n + 1) * x ^ (2 * n)) ↔ abs x < 1) := by sorry
