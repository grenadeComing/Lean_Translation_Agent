import Mathlib

/-- Ireland-Rosen Exercise 1.30: For n ≥ 2 the sum 1/2 + 1/3 + ... + 1/n is not an integer. -/
theorem ireland_rosen_exercise_1_30 {n : Nat} (hn : 2 ≤ n) :
  ¬ ∃ m : Int, Finset.sum (Finset.Ico 2 (n + 1)) (fun k => (1 : Rat) / (k : Rat)) = (m : Rat) := by sorry
