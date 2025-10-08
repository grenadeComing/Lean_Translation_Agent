import Mathlib

open BigOperators

theorem Herstein_exercise_4_2_9 (p : ℕ) (hp : Prime p) (hpodd : p ≠ 2) (a b : Int)
  (h : (∑ k in Finset.Ico 1 p, (1 : ℚ) / (k : ℚ)) = (a : ℚ) / (b : ℚ)) :
  (p : Int) ∣ a := by
  sorry
