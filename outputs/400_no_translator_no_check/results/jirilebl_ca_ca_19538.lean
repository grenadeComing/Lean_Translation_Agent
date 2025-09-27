import Mathlib

/--
Let z ∈ ℂ with |z| < 1. Then
  ∑_{n=1}^{∞} |z|^n / n ≤ |z| / (1 - |z|).
We index the infinite sum as n ↦ |z|^(n+1)/(n+1) to avoid the n=0 term.
-/
theorem jirilebl_ca_ca_19538 (z : ℂ) (hz : Complex.abs z < 1) :
  (tsum fun n : ℕ => Complex.abs z ^ (n + 1) / (n + 1)) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry
