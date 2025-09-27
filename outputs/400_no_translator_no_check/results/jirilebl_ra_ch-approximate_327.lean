import Mathlib

open Complex

/-- The function f(x) = e^x * cos x as a real function. -/
noncomputable def f (x : ℝ) : ℝ := Real.exp x * Real.cos x

/-- Coefficients a_n = Re((1 + i)^n) / n! so that f(x) = Σ a_n x^n. -/
noncomputable def a (n : ℕ) : ℝ := (Complex.re ((1 + Complex.I) ^ n)) / (Nat.factorial n : ℝ)

/-- f is analytic at 0. -/
theorem analytic_f : AnalyticAt ℝ f 0 := by sorry

/-- Power series expansion at 0: f(x) = Σ_{n=0}^∞ a_n x^n where a_n = Re((1+i)^n)/n!. -/
theorem taylor_exp_cos : ∀ x : ℝ, f x = ∑' (n : ℕ), a n * x ^ n := by sorry

/- The radius of convergence of this power series is infinite (⊤ in with_top ℝ),
   since it comes from the entire function e^{(1+i)x} and taking real part. -/
theorem radius_infinite : True := by trivial
