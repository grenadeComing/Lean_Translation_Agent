import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- A matrix is diagonal if all off-diagonal entries are zero. -/
def is_diagonal (M : Matrix n n R) : Prop := ∀ i j, i ≠ j → M i j = 0

/-- The subset of matrices in M_n(R) with determinant 1 and diagonal. -/
def D1_set : Set (Matrix n n R) := {M | is_diagonal M ∧ Matrix.det M = 1}

/-- The subset of units (invertible matrices) which are diagonal with determinant 1. -/
def D1 : Set ((Matrix n n R)ˣ) := {u | is_diagonal (u : Matrix n n R) ∧ Matrix.det (u : Matrix n n R) = 1}

/-- D1 is a subgroup of the group of units of M_n(R). -/
def D1_is_subgroup : Subgroup ((Matrix n n R)ˣ) := by sorry
