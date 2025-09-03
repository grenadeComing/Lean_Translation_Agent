import Mathlib

/-- The collection of open intervals with rational endpoints. -/
def rat_open_intervals : Set (Set ℝ) :=
  { U | ∃ (a b : ℚ), (a : ℝ) < b ∧ U = Ioo (a : ℝ) (b : ℝ) }

/-- Exercise: Show that the collection of open intervals with rational endpoints
    is a basis that generates the standard topology on ℝ. -/
theorem Munkres_exercise_13_8a :
  TopologicalSpace.IsTopologicalBasis rat_open_intervals ∧
  TopologicalSpace.generateFrom rat_open_intervals = (inferInstance : TopologicalSpace ℝ) := by
  sorry
