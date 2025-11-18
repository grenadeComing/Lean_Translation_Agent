import Mathlib

-- 2x2 real matrices as a convenient alias
 def mat2 := Matrix (Fin 2) (Fin 2) ℝ

/-- A reflection in O(2): orthogonal and determinant -1. -/
 def IsReflection (A : mat2) : Prop :=
   (A ⬝ Aᵀ = (1 : mat2)) ∧ Matrix.det A = -1

/-- A rotation in SO(2): orthogonal and determinant 1. -/
 def IsRotation (A : mat2) : Prop :=
   (A ⬝ Aᵀ = (1 : mat2)) ∧ Matrix.det A = 1

/-- The product of two reflections is a rotation. -/
 theorem product_of_two_reflections_in_O2_is_SO2
   (A B : mat2)
   (hA : IsReflection A)
   (hB : IsReflection B) :
   IsRotation (A ⬝ B) := by
  sorry
