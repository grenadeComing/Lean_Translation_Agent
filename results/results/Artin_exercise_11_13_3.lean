import Mathlib

/-- There are infinitely many primes congruent to -1 modulo 4. -/
theorem Artin_exercise_11_13_3 : Set.Infinite { p : ℕ | Nat.Prime p ∧ p % 4 = 3 } := by sorry
