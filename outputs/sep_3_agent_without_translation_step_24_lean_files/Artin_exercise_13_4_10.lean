import Mathlib

/-- If p is prime and p = 2^r + 1 then r is a power of 2. -/
theorem Artin_exercise_13_4_10 (p r : ℕ) (hp : Nat.Prime p) (hr : p = 2 ^ r + 1) :
  ∃ k : ℕ, r = 2 ^ k := by
  sorry
