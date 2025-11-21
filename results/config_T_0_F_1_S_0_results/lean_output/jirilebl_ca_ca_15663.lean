import Mathlib

/- Statement: If z ∈ ℂ with |z| < 1, then
   |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
   The file only contains the statement (no proof), ending with `:= by sorry`.
-/

theorem jirilebl_ca_ca_15663 (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤
    tsum (fun n : ℕ => (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ)) ∧
  tsum (fun n : ℕ => (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ)) ≤
    Complex.abs z / (1 - Complex.abs z) := by sorry
