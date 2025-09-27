import Mathlib

/-
Artin, exercise 13.4.10:
If a prime integer p has the form 2^r + 1 (with r ≥ 1), then r is a power of 2.
-/

theorem Artin_exercise_13_4_10 {p r : ℕ} (hp : Nat.Prime p) (hr : 1 ≤ r) (hpform : p = 2 ^ r + 1) :
  ∃ k : ℕ, r = 2 ^ k := by sorry
