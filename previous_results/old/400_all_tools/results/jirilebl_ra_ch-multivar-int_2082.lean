import Mathlib

theorem outer_measure_union_of_null {α : Type _} (m : MeasureTheory.OuterMeasure α) {A B : Set α} :
  m B = 0 → m (A ∪ B) = m A := by sorry
