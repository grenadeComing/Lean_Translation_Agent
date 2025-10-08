import Mathlib

/-- Prove that for each positive integer `n`, the number
    `10^(10^(10^n)) + 10^(10^n) + 10^n - 1` is not prime.
-/
theorem not_prime_task (n : ℕ) : ¬ (10^(10^(10^n)) + 10^(10^n) + 10^n - 1).Prime := by sorry
