import Mathlib

-- Let z ∈ ℂ with |z| < 1. Show ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
-- Statement only; proof omitted.

theorem jirilebl_ca_ca_19538 (z : ℂ) (h : abs z < 1) :
  ∑' n : ℕ, (abs z) ^ (n + 1) / (n + 1 : ℝ) ≤ abs z / (1 - abs z) := by sorry
