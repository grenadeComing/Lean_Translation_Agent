import Mathlib

open Matrix

/-- The product of two reflections in O(2) is a rotation in SO(2). -/
theorem prod_of_reflections_is_rotation (A B : Matrix (Fin 2) (Fin 2) ℝ)
  (hA : A.transpose * A = 1) (hA' : A.det = -1)
  (hB : B.transpose * B = 1) (hB' : B.det = -1) :
  (A * B).transpose * (A * B) = 1 ∧ (A * B).det = 1 := by
  -- proof omitted
  sorry
