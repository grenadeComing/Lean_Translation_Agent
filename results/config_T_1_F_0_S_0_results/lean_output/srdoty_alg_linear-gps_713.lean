import Mathlib

open Matrix

variable {A B : Matrix (Fin 2) (Fin 2) ℝ}

/-- If A and B are reflections in O(2) (orthogonal with determinant -1),
    then their product is a rotation: orthogonal with determinant 1. -/
theorem reflection_mul_reflection_is_rotation
  (hA : A ⬝ A.transpose = (1 : Matrix (Fin 2) (Fin 2) ℝ))
  (hB : B ⬝ B.transpose = (1 : Matrix (Fin 2) (Fin 2) ℝ))
  (hA_det : Matrix.det A = -1)
  (hB_det : Matrix.det B = -1) :
  (A ⬝ B) ⬝ (A ⬝ B).transpose = (1 : Matrix (Fin 2) (Fin 2) ℝ) ∧ Matrix.det (A ⬝ B) = 1 := by sorry