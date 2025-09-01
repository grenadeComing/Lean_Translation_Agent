import Mathlib

/-- There are infinitely many primes congruent to -1 modulo 4 (i.e. ≡ 3 mod 4). -/
theorem Artin_exercise_11_13_3 : ∀ n : ℕ, ∃ p : ℕ, Nat.Prime p ∧ p % 4 = 3 ∧ p > n := by sorry
