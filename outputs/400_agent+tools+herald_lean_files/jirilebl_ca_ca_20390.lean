import Mathlib

open Finset

/-- For any complex z and n ∈ ℕ, the error of truncating the exponential series after n
    satisfies the usual remainder estimate:
    |∑_{k=0}^n z^k / k! - e^z| ≤ |z|^{n+1} / (n+1)! * e^{|z|}.
    The proof is omitted (:= by sorry).
-/
theorem exp_series_remainder_bound (z : ℂ) (n : ℕ) :
  Complex.abs (Finset.sum (range (n + 1)) (fun k => z ^ k / (Nat.cast (Nat.factorial k) : ℂ)) - Complex.exp z)
    ≤ (Complex.abs z) ^ (n + 1) / (Nat.cast (Nat.factorial (n + 1)) : ℝ) * Real.exp (Complex.abs z) := by sorry
