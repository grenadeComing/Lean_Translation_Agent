import Mathlib

open Complex

/-- Error bound for the complex exponential Taylor polynomial.
    For z : ℂ and n : ℕ,
    |∑_{k=0}^n z^k / k! - e^z| ≤ |z|^{n+1} / (n+1)! * e^{|z|}.
-/
theorem exp_partial_sum_error_bound (z : ℂ) (n : ℕ) :
  |(∑ k in Finset.range (n+1), z ^ k / (k! : ℂ)) - Complex.exp z| ≤
    (|z| ^ (n+1) / ((n+1)! : ℝ)) * Real.exp |z| := by
  sorry
