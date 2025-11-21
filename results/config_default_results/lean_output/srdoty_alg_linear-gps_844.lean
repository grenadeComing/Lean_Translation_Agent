import Mathlib

open Matrix

variable {F : Type*} [Field F]

abbrev I := Fin 2
abbrev J := Sum I I

/-- A 4×4 matrix is a block matrix [[A,B],[0,C]] with A,B,C 2×2 matrices over F and AC invertible. -/
def is_block_matrix (M : Matrix J J F) : Prop :=
  ∃ (A B C : Matrix I I F), M = Matrix.fromBlocks A B (0 : Matrix I I F) C ∧ IsUnit (A * C)

/-- The subset G of 4×4 matrices of the specified block form. -/
def Gset : Set (Matrix J J F) := { M | is_block_matrix M }

/-- The corresponding subset of units in the matrix unit group. -/
def Gunits : Set (Units (Matrix J J F)) := { u | is_block_matrix (u.val) }

/-- The claimed statement: Gunits is a subgroup of the unit group of 4×4 matrices. Proof omitted. -/
def G_is_subgroup_units : Subgroup (Units (Matrix J J F)) := by sorry
