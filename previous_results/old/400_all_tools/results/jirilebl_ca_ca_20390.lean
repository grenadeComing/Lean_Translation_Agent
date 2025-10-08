import Mathlib

open Complex BigOperators Finset

/-- Let z ∈ ℂ. Show that for all n ∈ ℕ, |∑_{k=0}^n z^k / k! - e^z| ≤ |z|^{n+1}/(n+1)! * e^{|z|}. -/
theorem exp_taylor_error_bound (z : ℂ) (n : ℕ) :
  Complex.abs (Finset.sum (range (n + 1)) (fun k => z ^ k / (Nat.factorial k : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n + 1) / (Nat.factorial (n + 1) : ℝ) * Real.exp (Complex.abs z) := by sorry
