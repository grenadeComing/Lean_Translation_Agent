import Mathlib

open Set

/-- Basis of open intervals with rational endpoints. -/
def rational_open_intervals : Set (Set ℝ) :=
  { I | ∃ (a b : Rat), ((a : ℝ) < (b : ℝ)) ∧ I = Set.Ioo (a : ℝ) (b : ℝ) }

/-- The collection of open intervals with rational endpoints generates the standard topology on ℝ. -/
theorem rational_open_intervals_generate_std_topology :
  TopologicalSpace.generateFrom rational_open_intervals = (inferInstance : TopologicalSpace ℝ) := by sorry
