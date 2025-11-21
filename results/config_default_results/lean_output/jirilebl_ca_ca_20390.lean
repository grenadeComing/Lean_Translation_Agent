import Mathlib

/-- Let z ∈ ℂ. Show that for all n ∈ ℕ,
    |∑_{k=0}^n z^k/k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}.
-/
theorem exp_series_error_bound (z : Complex) (n : Nat) :
  Complex.abs ((∑ k in Finset.range (n + 1), z ^ k / (Nat.factorial k : Complex)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (Complex.abs z) := by sorry
