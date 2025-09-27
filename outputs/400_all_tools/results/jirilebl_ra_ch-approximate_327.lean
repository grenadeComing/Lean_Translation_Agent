import Mathlib

open Complex

noncomputable section

/-- Define f(x) = e^x * cos x as a real function. -/
noncomputable def f (x : ℝ) : ℝ := Real.exp x * Real.cos x

/-- Coefficients a_n = Re((1 + I)^n) / n! (as real numbers). -/
noncomputable def a (n : ℕ) : ℝ := (((1 : ℂ) + I) ^ n).re / (Nat.factorial n : ℝ)

/-- The exponential-cosine function equals its power series at 0, with coefficients a_n. -/
theorem f_eq_tsum : ∀ x : ℝ, f x = ∑' n : ℕ, a n * x ^ n := by sorry

/-- In particular, the power series converges for every real x (radius of convergence = ∞). -/
theorem f_has_sum_everywhere : ∀ x : ℝ, HasSum (fun n => a n * x ^ n) (f x) := by sorry

end noncomputable section
