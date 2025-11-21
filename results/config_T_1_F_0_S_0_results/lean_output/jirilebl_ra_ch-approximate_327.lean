import Mathlib

open Complex Real

/-- Define f(x) = e^x * cos x and the coefficients a_n = Re((1 + I)^n) / n!. State that f is analytic and equals the power series with coefficients a_n for all real x (hence radius of convergence ∞). -/

def f : ℝ → ℝ := fun x => Real.exp x * Real.cos x

def a (n : ℕ) : ℝ := Complex.re ((1 + Complex.I) ^ n) / (Nat.factorial n : ℝ)

theorem f_is_analytic_and_power_series :
  Analytic ℝ f ∧
  (∀ x : ℝ, HasSum (fun n => a n * x ^ n) (f x)) ∧
  (∀ r : ℝ, 0 < r → ∀ x : ℝ, |x| < r → HasSum (fun n => a n * x ^ n) (f x)) := by sorry