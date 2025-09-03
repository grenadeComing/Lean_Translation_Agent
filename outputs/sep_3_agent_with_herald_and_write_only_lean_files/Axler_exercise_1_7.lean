import Mathlib

/-- Example of a nonempty subset U of R^2 that is closed under scalar multiplication but
    is not a subspace of R^2. -/
theorem Axler_exercise_1_7 : ∃ U : Set (ℝ × ℝ),
  U.Nonempty ∧
  (∀ (a : ℝ) (v : ℝ × ℝ), v ∈ U → a • v ∈ U) ∧
  ∃ u v : ℝ × ℝ, u ∈ U ∧ v ∈ U ∧ u + v ∉ U := by
  sorry
