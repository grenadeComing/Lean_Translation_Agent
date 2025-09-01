import Mathlib

/-- If a prime p has the form 2^r + 1, then r is a power of 2 (i.e., there exists k with r = 2^k). -/
theorem Artin_exercise_13_4_10 (p r : ℕ) (hp : Prime p) (h : p = 2 ^ r + 1) : ∃ k : ℕ, r = 2 ^ k := by sorry
