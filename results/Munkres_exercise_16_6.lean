import Mathlib

open Set

/-- The countable collection of open rectangles with rational endpoints in R^2. -/
def rational_rectangles : Set (Set (ℝ × ℝ)) :=
  { s | ∃ (a b c d : ℚ), (a : ℝ) < (b : ℝ) ∧ (c : ℝ) < (d : ℝ) ∧ s = Set.Ioo (a : ℝ, c : ℝ) (b : ℝ, d : ℝ) }

/-- The collection of all open rectangles with rational endpoints is a basis for R^2.
    We state the two basis axioms (every point is in some basis element, and the intersection
    property) but do not provide a full proof here. -/
theorem Munkres_exercise_16_6 :
  let B := rational_rectangles in
  (∀ x : ℝ × ℝ, ∃ U, U ∈ B ∧ x ∈ U) ∧
  (∀ U V : Set (ℝ × ℝ), U ∈ B → V ∈ B → ∀ x, x ∈ U ∩ V → ∃ W, W ∈ B ∧ x ∈ W ∧ W ⊆ U ∩ V) := by
  sorry
