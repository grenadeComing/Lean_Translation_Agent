import Mathlib

variable {F : Type _} [Field F]

open Matrix

/-- Build a 4×4 block matrix with 2×2 blocks A,B,C and zero bottom-left block. -/
def block_matrix (A B C : Matrix (Fin 2) (Fin 2) F) : Matrix (Fin 4) (Fin 4) F :=
  Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C

/-- The set G of block upper-triangular matrices (as units) with det(A ⬝ C) ≠ 0. -/
def G_units : Set (Units (Matrix (Fin 4) (Fin 4) F)) :=
  { u | ∃ A B C : Matrix (Fin 2) (Fin 2) F,
      (u : Matrix (Fin 4) (Fin 4) F) = block_matrix A B C ∧ Matrix.det (A ⬝ C) ≠ 0 }

/-- G is a subgroup (matrix group) under multiplication. -/
theorem G_is_subgroup : IsSubgroup (G_units : Set (Units (Matrix (Fin 4) (Fin 4) F))) := by sorry
