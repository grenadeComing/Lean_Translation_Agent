import Mathlib

/-- For z ∈ ℂ and n ∈ ℕ, the remainder of the exponential series satisfies
    |∑_{k=0}^n z^k/k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}.
  We state the lemma and leave the proof as `sorry`. -/
theorem exp_series_remainder_bound (z : ℂ) (n : ℕ) :
  Complex.abs (Finset.sum (Finset.range (n + 1)) (fun k => (z ^ k) / (Nat.factorial k : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (Complex.abs z) := by sorry
