import Mathlib

/-- There exist infinitely many integers n such that n, n+1, n+2 are each the sum of two squares. -/
theorem Putnam_exercise_2000_a2 : Set.Infinite { n : ℤ | ∃ a b : ℤ, n = a ^ 2 + b ^ 2 ∧ ∃ a' b' : ℤ, n + 1 = a' ^ 2 + b' ^ 2 ∧ ∃ a'' b'' : ℤ, n + 2 = a'' ^ 2 + b'' ^ 2 } := by sorry
