import Mathlib

/-!
Let z ∈ ℂ with |z| < 1. Show that |log(1 - z)| ≤ ∑_{n=1}^∞ |z|^n / n ≤ |z| / (1 - |z|).
This file only states the lemma; the proof is omitted (by sorry).
-/

-- avoid `open Complex` to prevent notation conflicts

theorem jirilebl_ca_ca_20226 (z : ℂ) (h : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (n : ℕ), (Complex.abs z)^(n + 1) / (↑n + 1 : ℝ) ∧
  (∑' (n : ℕ), (Complex.abs z)^(n + 1) / (↑n + 1 : ℝ)) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry
