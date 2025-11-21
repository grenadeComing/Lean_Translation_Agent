import Mathlib

variable {n : Type _} [Fintype n] [DecidableEq n]
variable {R : Type _} [CommRing R]

/-- The (orthogonal) matrices as a set. -/
def O_matrix : Set (Matrix n n R) := {A | Matrix.transpose A * A = 1}

/-- The special orthogonal matrices as a set: orthogonal matrices with determinant 1. -/
def SO_matrix : Set (Matrix n n R) := {A | A ∈ O_matrix ∧ Matrix.det A = 1}

/-- SO(n) = {A ∈ O(n) | det A = 1} is a matrix group (a subgroup of the units of the matrix ring). -/
def special_orthogonal_is_subgroup : Subgroup (Units (Matrix n n R)) := by sorry
