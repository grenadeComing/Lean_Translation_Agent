import Mathlib

open BigOperators

/-- Exercise 1.30 (Ireland & Rosen): The harmonic sum 1/2 + 1/3 + ... + 1/n is never an integer for n ≥ 2. -/
theorem ireland_rosen_exercise_1_30 (n : ℕ) (hn : 2 ≤ n) : ¬ ∃ m : ℤ, (∑ k in Finset.Ico 2 (n+1), (1 : ℚ) / k) = (m : ℚ) := by sorry
