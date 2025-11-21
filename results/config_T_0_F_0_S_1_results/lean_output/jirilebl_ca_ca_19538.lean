import Mathlib

/--
Let z ∈ ℂ with |z| < 1. Then
  ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
This file contains only the statement (no proof).
-/
theorem jirilebl_ca_ca_19538 (z : ℂ) (hz : Complex.abs z < 1) :
  ∑' n : ℕ, (Complex.abs z) ^ (n + 1) / (n + 1) ≤ Complex.abs z / (1 - Complex.abs z) := by sorry
