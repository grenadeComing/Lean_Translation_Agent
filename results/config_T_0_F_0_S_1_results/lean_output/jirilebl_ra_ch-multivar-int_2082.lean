import Mathlib

/-- Let m be an outer measure on ℝ^n. If B has outer measure 0, then adding B to any set A
    does not change its outer measure. -/
theorem outer_measure_union_of_null_right {n : ℕ} (m : MeasureTheory.OuterMeasure (Fin n → ℝ))
  (A B : Set (Fin n → ℝ)) (hB : m B = 0) : m (A ∪ B) = m A := by sorry