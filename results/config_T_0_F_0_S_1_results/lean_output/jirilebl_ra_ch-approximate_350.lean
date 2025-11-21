import Mathlib

/-- The function f(x) = 1 / (x^2 + 1)^2. -/
def f (x : ℝ) : ℝ := 1 / (x ^ 2 + 1) ^ 2

/-- Power series expansion around 0: for |x| < 1,
    1/(1 + x^2)^2 = sum_{n >= 0} (-1)^n (n+1) x^{2n}.
    (This equality asserts the analytic expansion at 0.) -/
theorem f_has_power_series_at_zero (x : ℝ) (hx : |x| < 1) :
  f x = ∑' (fun n : ℕ => (-1 : ℝ) ^ n * (n + 1 : ℝ) * x ^ (2 * n)) := by sorry

/-- The radius of convergence of the above power series (viewed as a real power series in x)
    is 1 (the nearest complex singularities are at i and -i). -/
theorem f_power_series_radius_one :
  ∃ r : ℝ, r = 1 ∧ ∀ x : ℝ, |x| < r → f x = ∑' (fun n : ℕ => (-1 : ℝ) ^ n * (n + 1 : ℝ) * x ^ (2 * n)) := by sorry
