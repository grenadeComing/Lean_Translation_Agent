import Mathlib

/-!
Show that the product of any two reflection matrices in O(2) is a rotation matrix (i.e., an element of SO(2)).
We express this by assuming A and B are 2x2 real matrices with Aᵀ * A = I, Bᵀ * B = I (orthogonal)
and det A = det B = -1 (reflections). Then A * B is orthogonal and has determinant 1.
-/

theorem product_of_two_reflections_in_O2_is_rotation {A B : Matrix (Fin 2) (Fin 2) ℝ}
  (hA : A.transpose * A = 1 ∧ Matrix.det A = (-1 : ℝ))
  (hB : B.transpose * B = 1 ∧ Matrix.det B = (-1 : ℝ)) :
  (A * B).transpose * (A * B) = 1 ∧ Matrix.det (A * B) = (1 : ℝ) := by
  sorry
