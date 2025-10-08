import Mathlib

open MeasureTheory Set ENNReal

variable {α : Type _}

lemma outer_measure_union_of_null (μ : OuterMeasure α) (A B : Set α) (h : μ B = 0) :
  μ (A ∪ B) = μ A := by sorry
