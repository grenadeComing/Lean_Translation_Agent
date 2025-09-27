import Mathlib

/-!
Simple statement: for z in C with |z| < 1,
|log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
We express the series as ∑' n, |z|^(n+1)/(n+1).
-/

theorem jirilebl_log_one_sub_bound (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' n : ℕ, Complex.abs z ^ (n+1) / (n+1) ∧
  (∑' n : ℕ, Complex.abs z ^ (n+1) / (n+1)) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
