import Mathlib

open Complex

/-- Coefficients of the Taylor series of e^x cos x at 0. -/
noncomputable def a (n : ℕ) : ℝ := (Complex.re ((1 + Complex.I) ^ n)) / ((Nat.factorial n : ℝ))

/-- Let f(x) = e^x cos x. The power series with coefficients `a n` equals `f` for all real x
    and therefore converges for every real x (radius of convergence = ∞). -/
theorem jirilebl_ra_ch_approximate_327 :
  (∀ x : ℝ, HasSum (fun n => a n * x ^ n) (Real.exp x * Real.cos x)) ∧
  (∀ x : ℝ, Summable (fun n => a n * x ^ n))
:= by sorry
