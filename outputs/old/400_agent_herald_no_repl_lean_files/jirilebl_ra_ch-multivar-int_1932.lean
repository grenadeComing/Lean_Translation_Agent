import Mathlib

open MeasureTheory Set

/-- If for every ε>0 there exists a superset Y ⊇ X with outer measure μ Y ≤ ε,
then the outer measure of X is zero. -/
theorem outer_measure_of_supersets_arbitrarily_small_eq_zero {α : Type _} (μ : OuterMeasure α) (X : Set α)
  (h : ∀ ε : ℝ≥0∞, 0 < ε → ∃ Y : Set α, X ⊆ Y ∧ μ Y ≤ ε) : μ X = 0 := by sorry
