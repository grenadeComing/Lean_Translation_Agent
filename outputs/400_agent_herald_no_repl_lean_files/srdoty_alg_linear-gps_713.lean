import Mathlib

open Matrix

variable {A B : Matrix (Fin 2) (Fin 2) ℝ}

/--
The product of two reflection matrices in O(2) is a rotation (an element of SO(2)).
We state this by assuming A and B are orthogonal (Aᵀ A = I, Bᵀ B = I) with det = -1,
and conclude that A * B is orthogonal and has determinant 1.
-/
theorem product_of_two_reflections_is_rotation
  (hA : A.transpose * A = (1 : Matrix (Fin 2) (Fin 2) ℝ))
  (hB : B.transpose * B = (1 : Matrix (Fin 2) (Fin 2) ℝ))
  (hdA : det A = (-1 : ℝ))
  (hdB : det B = (-1 : ℝ)) :
  (A * B).transpose * (A * B) = (1 : Matrix (Fin 2) (Fin 2) ℝ) ∧ det (A * B) = (1 : ℝ) := by sorry
