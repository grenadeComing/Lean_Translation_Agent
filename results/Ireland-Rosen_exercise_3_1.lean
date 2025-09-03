import Mathlib

/-- There are infinitely many primes congruent to -1 modulo 6.
    Formulated as: for every N there exists a prime p > N with p % 6 = 5. -/
theorem infinitely_many_primes_congruent_to_neg_one_mod_6 :
  ∀ N : ℕ, ∃ p : ℕ, p > N ∧ Nat.Prime p ∧ p % 6 = 5 := by sorry
