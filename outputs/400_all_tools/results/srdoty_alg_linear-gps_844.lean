import Mathlib

variable (F : Type _) [Field F]

variable {n2 : Type} [DecidableEq n2] [Fintype n2]

/-- We will work with 2×2 blocks; fix n2 to be Fin 2. -/
def n2_def : Type := Fin 2

-- make N the index type for 4×4 matrices (a disjoint union of two copies of Fin 2)
def N := Sum n2_def n2_def

variable [DecidableEq N] [Fintype N]

open Matrix

/-- G is the set of invertible block matrices of the form fromBlocks A B 0 C with
    A,B,C : Matrix (Fin 2) (Fin 2) F and det (A ⬝ C) ≠ 0. -/
def G : Set (GL N F) :=
  { g | ∃ (A B C : Matrix (Fin 2) (Fin 2) F),
      (g : Matrix N N F) = Matrix.fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧
      Matrix.det (A ⬝ C) ≠ 0 }

/-- The set G forms a subgroup of GL N F (i.e. a matrix group under multiplication). -/
theorem G_is_subgroup : Subgroup (GL N F) := by
  -- Proof omitted: one proves closure under multiplication and inverses using block multiplication
  -- and multiplicativity of determinant.
  sorry
