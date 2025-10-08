import Mathlib

/-!
Exercise: Show that there are infinitely many primes congruent to -1 modulo 6.
This file states the result; the proof is omitted (`by sorry`).
-/-

theorem infinitely_many_primes_congruent_neg_one_mod_six :
  ∀ N : ℕ, ∃ p : ℕ, p > N ∧ Prime p ∧ p % 6 = 5 := by sorry
