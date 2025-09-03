import Mathlib

theorem Rudin_exercise_3_6a :
  ∀ M : ℝ, 0 < M → ∃ N : ℕ, ∀ n, N ≤ n →
    (Finset.sum (Finset.range n) (fun i => Real.sqrt ((i : ℝ) + 1) - Real.sqrt (i : ℝ))) ≥ M := by sorry
