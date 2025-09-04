import Mathlib

open MeasureTheory Set

lemma outer_measure_union_null {α : Type _} (μ : MeasureTheory.OuterMeasure α) {A B : Set α}
  (h : μ.measureOf B = 0) : μ.measureOf (A ∪ B) = μ.measureOf A := by sorry
