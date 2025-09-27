import Mathlib

open MeasureTheory Set

/-- Let `m*` be an outer measure on `ℝ^n` (or any type `α`).
Suppose `A`, `B` are subsets with `m*(B) = 0`. Then `m*(A ∪ B) = m*(A)`.
-/
theorem outer_measure_union_null {α : Type*} (μ : OuterMeasure α) {A B : Set α} (hB : μ B = 0) : μ (A ∪ B) = μ A := by sorry
