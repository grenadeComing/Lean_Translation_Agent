import Mathlib

/-- If a prime natural number p equals 2^r + 1, then r is a power of 2. -/
theorem Artin_exercise_13_4_10 (p r : ℕ) (hp : Nat.Prime p) (h : p = 2 ^ r + 1) : ∃ k : ℕ, r = 2 ^ k := by sorry
