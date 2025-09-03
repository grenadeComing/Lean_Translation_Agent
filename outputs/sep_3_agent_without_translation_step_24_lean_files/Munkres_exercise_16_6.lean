import Mathlib

theorem Munkres_exercise_16_6 :
  TopologicalSpace.IsTopologicalBasis { U : Set (ℝ × ℝ) |
    ∃ (a b c d : ℚ), a < b ∧ c < d ∧ U = Set.prod (Set.Ioo (a : ℝ) (b : ℝ)) (Set.Ioo (c : ℝ) (d : ℝ)) } := by
  sorry
