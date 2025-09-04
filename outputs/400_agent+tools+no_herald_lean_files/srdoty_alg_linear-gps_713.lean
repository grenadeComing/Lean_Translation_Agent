import Mathlib

open Matrix

/--
The product of any two reflections in O(2) is a rotation (an element of SO(2)).
We state this for 2x2 real matrices: if A and B are orthogonal and have determinant -1,
then A * B is orthogonal and has determinant 1.
-/
theorem product_of_two_reflections_is_rotation (A B : Matrix (Fin 2) (Fin 2) ℝ)
  (hA : A.transpose * A = 1) (hB : B.transpose * B = 1)
  (hdA : A.det = -1) (hdB : B.det = -1) :
  (A * B).transpose * (A * B) = 1 ∧ (A * B).det = 1 := by
  sorry
