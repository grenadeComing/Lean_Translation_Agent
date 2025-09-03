import Mathlib

/-- The collection of open rectangles with rational endpoints is a basis for R^2. -/
theorem Munkres_exercise_16_6 :
  TopologicalSpace.IsTopologicalBasis
    { U : Set (ℝ × ℝ) |
      ∃ (a b c d : ℚ), (a : ℝ) < (b : ℝ) ∧ (c : ℝ) < (d : ℝ) ∧
        U = (Set.Ioo (a : ℝ) (b : ℝ)) ×ˢ (Set.Ioo (c : ℝ) (d : ℝ)) } := by
  sorry
