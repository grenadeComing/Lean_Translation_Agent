import Mathlib
open BigOperators

/-- Prove that lim_{n \rightarrow \infty} \sum_{i<n} a_i = \infty, where a_i = \sqrt{i + 1} -\sqrt{i}. -/
theorem Rudin_exercise_3_6a : ∀ M : ℝ, ∃ N : ℕ, ∀ n : ℕ, n ≥ N → (Finset.sum (Finset.range n) (fun i => Real.sqrt (i + 1) - Real.sqrt i)) ≥ M := by sorry
