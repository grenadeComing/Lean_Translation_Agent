import Mathlib

theorem Rudin_exercise_5_4 {n : ℕ} (C : Fin (n+1) → ℝ)
  (h : ∑ i : Fin (n+1), C i / (i.val + 1 : ℝ) = 0) :
  ∃ x : ℝ, 0 < x ∧ x < 1 ∧ ∑ i : Fin (n+1), C i * x ^ i.val = 0 := by sorry
