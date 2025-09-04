import Mathlib

open Matrix

variable (F : Type*) [Field F]

abbrev I := Sum (Fin 2) (Fin 2)

/-- The 4x4 block matrix built from 2x2 blocks A,B,C with a zero bottom-left block, indexed by Fin2 ⊕ Fin2. -/
def block4 (A B C : Matrix (Fin 2) (Fin 2) F) : Matrix I I F :=
  Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C

/-- The set G of all block matrices of the form [[A,B],[0,C]] with det(AC) ≠ 0, viewed as matrices on I. -/
def Gset : Set (Matrix I I F) :=
  { M |
    ∃ A B C : Matrix (Fin 2) (Fin 2) F,
      M = block4 F A B C ∧ Matrix.det (A * C) ≠ 0 }

/-- The subgroup statement: viewing elements as elements of GL(I, F), the block matrices form a subgroup. -/
theorem block_matrices_form_subgroup :
  ∃ S : Subgroup (GL I F),
    ∀ g : GL I F,
      (g ∈ S) ↔ ∃ A B C : Matrix (Fin 2) (Fin 2) F,
        (g : Matrix I I F) = Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧
        Matrix.det (A * C) ≠ 0 := by sorry
