import Mathlib

open Nat

/-- If a prime integer p has the form 2^r + 1, then r is a power of 2, i.e. p = 2^{2^k} + 1 for some k. -/
theorem Artin_exercise_13_4_10 (p r : ℕ) (hp : Nat.Prime p) (h : p = 2 ^ r + 1) : ∃ k : ℕ, p = 2 ^ (2 ^ k) + 1 := by sorry
