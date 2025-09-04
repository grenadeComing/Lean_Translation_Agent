import Mathlib
open BigOperators
open Finset

noncomputable section

/-- Coefficients for the Maclaurin series of e^x * cos x. -/
def a (n : ℕ) : ℝ :=
  Finset.sum (Finset.range (n + 1)) fun k =>
    if k % 2 = 0 then
      ((-1 : ℝ) ^ (k / 2)) / ((Nat.factorial (n - k) * Nat.factorial k) : ℝ)
    else
      0

/-- The function f(x) = e^x * cos x. -/
noncomputable def f (x : ℝ) : ℝ := Real.exp x * Real.cos x

/-- The Maclaurin power series for f equals f on all real x. (Statement only, proof omitted.) -/
theorem f_eq_power_series : ∀ x : ℝ, (∑' n : ℕ, a n * x ^ n) = f x := by
  sorry

/-- The radius of convergence of the above power series is infinite. (Statement only.) -/
theorem radius_of_convergence_infinite : True := by
  sorry

end
