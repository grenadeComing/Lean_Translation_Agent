import Mathlib

open Set
open TopologicalSpace

/-- The collection of open rectangles with rational endpoints in R^2. -/
def rectangle_basis : Set (Set (ℝ × ℝ)) :=
  { U | ∃ (a b c d : ℚ), (a : ℝ) < b ∧ (c : ℝ) < d ∧ U = Ioo (a : ℝ) (b : ℝ) ×ˢ Ioo (c : ℝ) (d : ℝ) }

/-- This collection is a topological basis for the product topology on R × R. -/
theorem rectangle_basis_is_topological_basis : TopologicalSpace.IsTopologicalBasis rectangle_basis := by sorry

/-- The collection is countable. -/
theorem rectangle_basis_countable : rectangle_basis.Countable := by sorry
