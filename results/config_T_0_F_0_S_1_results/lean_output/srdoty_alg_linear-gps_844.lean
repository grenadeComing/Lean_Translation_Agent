import Mathlib

variable {F : Type _} [Field F]

def M2 := Matrix (Fin 2) (Fin 2) F
def M2_block := Matrix (Fin 2) (Fin 2) M2

/-- G is the set of 2×2 block matrices (with 2×2 blocks) of the form
    [[A, B], [0, C]] with A,B,C : M2 and det (A * C) ≠ 0. -/
def block_upper_set : Set M2_block :=
  { M | ∃ (A B C : M2),
      M (0 : Fin 2) (0 : Fin 2) = A ∧ M 0 1 = B ∧ M 1 0 = (0 : M2) ∧ M 1 1 = C ∧ det (A * C) ≠ 0 }

/-- The set of such block matrices contains the identity, is closed under
    multiplication, and every element has an inverse in the set, i.e. it
    forms a matrix group under multiplication (as a subset of the units of
    the 2×2 matrix algebra over M2). -/
theorem block_matrices_form_group :
  (1 : M2_block) ∈ block_upper_set ∧
  (∀ M N, M ∈ block_upper_set → N ∈ block_upper_set → M * N ∈ block_upper_set) ∧
  (∀ M, M ∈ block_upper_set → ∃ N, N ∈ block_upper_set ∧ M * N = (1 : M2_block) ∧ N * M = (1 : M2_block)) := by sorry
