import Mathlib

/-
Let z ∈ ℂ with |z| < 1. Prove that
  ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
This file only states the lemma (proof omitted).
-/

theorem jirilebl_ca_ca_19538 (z : ℂ) (h : Complex.abs z < (1 : ℝ)) :
  (∑' n : ℕ, (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ)) ≤ Complex.abs z / ((1 : ℝ) - Complex.abs z) := by sorry
