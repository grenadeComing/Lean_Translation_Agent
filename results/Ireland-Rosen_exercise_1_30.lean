import Mathlib

/-- Ireland & Rosen, Exercise 1.30:
For every integer n ≥ 2, the rational number 1/2 + 1/3 + ... + 1/n is not an integer. -/
theorem ireland_rosen_exercise_1_30 (n : ℕ) (hn : 2 ≤ n) :
  ¬ ∃ z : ℤ, (Finset.Ico (2 : ℕ) (n+1)).sum (fun k => (1 : ℚ) / (k : ℚ)) = z := by sorry
