import Mathlib

/--
Bound on the remainder of the Taylor series for the complex exponential.
For z : ℂ and n : ℕ,
  |∑_{k=0}^n z^k / k! - exp z| ≤ |z|^{n+1} / (n+1)! * exp |z|.
-/
theorem exp_taylor_remainder_bound (z : ℂ) (n : ℕ) :
  Complex.abs (∑ k in Finset.range (n+1), z^k / (k! : ℂ) - Complex.exp z) ≤
    (Complex.abs z)^(n+1) / ((n+1)! : ℝ) * Real.exp (Complex.abs z) := by sorry
