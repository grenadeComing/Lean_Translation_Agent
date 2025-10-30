import Mathlib

open Set
open MeasureTheory

/--
Translation: If X is a subset of ℝ^n such that for every ε > 0 there exists Y ⊇ X with m*(Y) ≤ ε,
then m*(X) = 0.
This file contains a translation with a placeholder proof (sorry).
-/
theorem outer_measure_zero_of_subset_of_arbitrarily_small_measure
  {n : ℕ} {X : Set (ℝ^n)}
  (h : ∀ ε > (0:ℝ), ∃ Y, X ⊆ Y ∧ m*(Y) ≤ ENNReal.ofReal ε)
  : m*(X) = 0 := by
  sorry
