import Mathlib

open Matrix

variable {n : Type _} [DecidableEq n] [Fintype n]
variable {R : Type _} [CommRing R]

/-- A matrix is diagonal if all off-diagonal entries are zero. -/
def is_diagonal (A : Matrix n n R) : Prop := ∀ i j, i ≠ j → A i j = 0

/-- The set of invertible diagonal matrices in GL(n, R) forms a subgroup of the unit group of matrices. -/
theorem diag_units_subgroup :
  ∃ H : Subgroup (Units (Matrix n n R)),
    ∀ u : Units (Matrix n n R), u ∈ H ↔ is_diagonal (u : Matrix n n R) := by sorry
