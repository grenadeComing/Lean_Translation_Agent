import Mathlib

/-- The product of two reflections in O(2) is a rotation (an element of SO(2)).

We express reflections as 2x2 real orthogonal matrices with determinant -1,
and rotations as orthogonal matrices with determinant 1. -/
theorem reflections_mul_is_rotation (A B : Matrix (Fin 2) (Fin 2) ℝ)
  (hA : A.transpose * A = 1)
  (hdetA : A.det = (-1 : ℝ))
  (hB : B.transpose * B = 1)
  (hdetB : B.det = (-1 : ℝ)) :
  (A * B).transpose * (A * B) = 1 ∧ (A * B).det = (1 : ℝ) := by sorry
