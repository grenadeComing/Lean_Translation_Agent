import Mathlib

open Set

/-- The collection of open rectangles with rational endpoints in R^2. -/
def rational_rectangle_basis_set : Set (Set (ℝ × ℝ)) :=
  { S | ∃ (a b c d : ℚ), (a : ℝ) < (b : ℝ) ∧ (c : ℝ) < (d : ℝ) ∧
      S = Set.prod (Set.Ioo (a : ℝ) (b : ℝ)) (Set.Ioo (c : ℝ) (d : ℝ)) }

/-- Exercise: The countable collection of rational open rectangles is a basis for R^2. -/
theorem Munkres_exercise_16_6 : IsTopologicalBasis rational_rectangle_basis_set ∧ Countable rational_rectangle_basis_set := by
  sorry
