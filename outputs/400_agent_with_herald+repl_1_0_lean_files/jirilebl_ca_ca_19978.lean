import Mathlib
open BigOperators

/-- For z ∈ ℂ and n ∈ ℕ, the tail of the exponential series is bounded by
    |∑_{k=0}^n z^k/k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}.
-/
theorem exp_series_tail_bound (z : ℂ) (n : Nat) :
  Complex.abs ((∑ k in Finset.range (n+1), z ^ k / (k! : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n+1) / ((n+1)! : ℝ) * Real.exp (Complex.abs z) := by
  sorry
