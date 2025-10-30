import Mathlib
open Set

noncomputable section

theorem outer_measure_union_null {α : Type*} (m : OuterMeasure α) (A B : Set α) (hB : m B = 0) : m (A ∪ B) = m A := by
  -- proof omitted
  sorry

end