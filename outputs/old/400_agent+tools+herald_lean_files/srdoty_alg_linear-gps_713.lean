import Mathlib

open Matrix

/-- A 2×2 real matrix is a reflection if it is orthogonal and has determinant -1. -/
def is_reflection (M : Matrix (Fin 2) (Fin 2) ℝ) : Prop := Mᵀ * M = 1 ∧ M.det = -1

/-- A 2×2 real matrix is a rotation if it is orthogonal and has determinant 1. -/
def is_rotation (M : Matrix (Fin 2) (Fin 2) ℝ) : Prop := Mᵀ * M = 1 ∧ M.det = 1

/-- The product of two reflections in O(2) is a rotation in SO(2). -/
theorem product_of_two_reflections_is_rotation (A B : Matrix (Fin 2) (Fin 2) ℝ)
  (hA : is_reflection A) (hB : is_reflection B) : is_rotation (A * B) := by sorry
