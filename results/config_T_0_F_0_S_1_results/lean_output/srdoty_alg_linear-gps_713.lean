import Mathlib

/-!
Product of two reflections in O(2) is a rotation in SO(2).
This file states the fact that if A and B are 2x2 real orthogonal
matrices with determinant -1 (i.e., reflections), then their product
is orthogonal with determinant 1 (i.e., a rotation).
-/

lemma product_of_two_reflections_is_rotation (A B : Matrix (Fin 2) (Fin 2) ℝ)
  (hA_orth : Aᵀ * A = 1)
  (hB_orth : Bᵀ * B = 1)
  (hA_det : A.det = (-1 : ℝ))
  (hB_det : B.det = (-1 : ℝ)) :
  ((A * B)ᵀ * (A * B) = 1) ∧ ( (A * B).det = (1 : ℝ) ) := by sorry