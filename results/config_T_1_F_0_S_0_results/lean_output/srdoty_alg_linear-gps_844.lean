import Mathlib

open Matrix

variable (F : Type _) [Field F]

/-- A 4x4 matrix over F is of the block form [[A,B],[0,C]] with 2x2 blocks A,B,C and det(AC) ≠ 0. -/
def is_block_matrix (M : Matrix (Fin 4) (Fin 4) F) : Prop :=
  ∃ (A B C : Matrix (Fin 2) (Fin 2) F),
    M = Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧ Matrix.det (A ⬝ C) ≠ 0

/-- The subset G of units of 4x4 matrices consisting of those units whose underlying matrix
    is of the above block form. -/
def G : Set (Units (Matrix (Fin 4) (Fin 4) F)) :=
  { U : Units (Matrix (Fin 4) (Fin 4) F) | is_block_matrix (↑U : Matrix (Fin 4) (Fin 4) F) }

/-- The block matrices form a subgroup of the group of units of 4x4 matrices. -/
theorem block_matrices_form_group :
  ∃ H : Subgroup (Units (Matrix (Fin 4) (Fin 4) F)), H.carrier = G F := by sorry