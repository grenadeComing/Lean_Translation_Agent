import Mathlib

variable {n : ℕ}
variable (m : measure_theory.outer_measure (Fin n → ℝ)) (A B : Set (Fin n → ℝ))

theorem outer_measure_union_null (hB : m B = 0) : m (A ∪ B) = m A := by sorry