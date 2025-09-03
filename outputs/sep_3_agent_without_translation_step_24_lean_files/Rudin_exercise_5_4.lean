import Mathlib

open Set

theorem Rudin_exercise_5_4 {n : ℕ} (C : Fin (n+1) → ℝ)
  (h : (∑ k : Fin (n+1), C k / ((k.val : ℝ) + 1)) = 0) :
  ∃ x : ℝ, x ∈ Ioo (0 : ℝ) 1 ∧ (∑ k : Fin (n+1), C k * x ^ k.val) = 0 := by
  sorry
