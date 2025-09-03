import Mathlib

open Finset

theorem ireland_rosen_exercise_1_30 (n : ℕ) (hn : 2 ≤ n) :
  ¬ ∃ m : ℤ, Finset.sum (filter (fun k => 2 ≤ k) (range (n + 1))) (fun k => (1 : ℚ) / (k : ℚ)) = (m : ℚ) := by sorry
