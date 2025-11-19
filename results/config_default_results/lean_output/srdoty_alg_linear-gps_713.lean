import Mathlib
open Matrix
open LinearMap
open Subgroup
open scoped Classical in
open scoped MatrixGroups
open Matrix MatrixGroups SpecialLinearGroup
open MatrixGroups
open Matrix Matrix.SpecialLinearGroup

/-- Provide a faithful Lean4 encoding (not a proof) that the product of any two reflection matrices in O(2) is a rotation matrix in SO(2). Use 2x2 real matrices M := Matrix (Fin 2) (Fin 2) ℝ. Define Reflection A : Prop as (Matrix.transpose A ⬝ A = 1) ∧ (Matrix.det A = -1). Define Rotation A : Prop as (Matrix.transpose A ⬝ A = 1) ∧ (Matrix.det A = 1). Then state: for all A B, Reflection A → Reflection B → Rotation (A ⬝ B). End with := by sorry. -/
lemma reflection_mul_reflection_is_rotation_tac_17266 (A : Matrix (Fin 2) (Fin 2) ℝ) (B : Matrix (Fin 2) (Fin 2) ℝ) : (A.transpose * A = 1 ∧ A.det = -1) → (B.transpose * B = 1 ∧ B.det = -1) → (A * B).transpose * (A * B) = 1 ∧ (A * B).det = 1 := sorry