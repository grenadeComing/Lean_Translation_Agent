import Mathlib
open Matrix
open LinearMap
open Subgroup
open scoped Classical in
open scoped MatrixGroups
open Matrix MatrixGroups SpecialLinearGroup

/-- Show that the product of any two reflection matrices in O(2) is a rotation matrix (i.e., an element of SO(2)). -/
theorem isRotation_mul_of_reflection_ext {A B : Matrix (Fin 2) (Fin 2) ℝ} (hA : A.transpose * A = 1) (hB : B.transpose * B = 1)
    (hA' : A.det = -1) (hB' : B.det = -1) : (A * B).transpose * (A * B) = 1 ∧ (A * B).det = 1 := by sorry
