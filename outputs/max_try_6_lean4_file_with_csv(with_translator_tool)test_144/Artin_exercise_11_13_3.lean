import Mathlib

/-- There are infinitely many primes congruent to -1 modulo 4.
    Formulated as: for every m, there is a prime p > m with p % 4 = 3. -/
theorem Artin_exercise_11_13_3 :
  ∀ m : Nat, ∃ p : Nat, p > m ∧ Nat.Prime p ∧ p % 4 = 3 := by sorry
