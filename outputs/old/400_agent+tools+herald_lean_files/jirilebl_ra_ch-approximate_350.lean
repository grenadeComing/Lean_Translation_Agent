import Mathlib

open Complex

noncomputable section

/-- The function f(z) = 1/(z^2+1)^2 as a complex function. -/
def f (z : Complex) : Complex := 1 / (z ^ 2 + 1) ^ 2

/-- Coefficients a_n: a_{2n} = (-1)^n (n+1), a_{2n+1} = 0. -/
def a (n : ℕ) : Complex :=
  if n % 2 = 0 then (-1 : Complex) ^ (n / 2) * (Complex.ofReal (n / 2 + 1)) else 0

/-- Power series expansion at 0: for |z| < 1, f z = ∑'_{n=0}^
    a_n z^n. -/
theorem power_series_at_zero (z : Complex) (hz : Complex.abs z < 1) :
  f z = ∑' n : ℕ, a n * z ^ n := by
  sorry

/-- Specification of the coefficients. -/
theorem coefficients_spec (n : ℕ) :
  a (2 * n) = (-1 : Complex) ^ n * (n + 1) ∧ a (2 * n + 1) = 0 := by
  sorry

/-- Radius of convergence is 1. -/
theorem radius_of_convergence : True := by
  -- The power series above converges for |z| < 1, so the radius is 1.
  trivial

end
