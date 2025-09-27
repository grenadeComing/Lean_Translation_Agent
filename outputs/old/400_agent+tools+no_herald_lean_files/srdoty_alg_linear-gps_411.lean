import Mathlib

open Matrix

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- A matrix is diagonal when all off-diagonal entries are zero. -/
def is_diagonal (A : Matrix n n R) : Prop :=
  ∀ i j, i ≠ j → A i j = 0

/-- D1(n) = set of diagonal matrices in SL(n,R) (determinant 1). -/
def D1 : Set (Matrix n n R) := { A | is_diagonal A ∧ Matrix.det A = 1 }

/-- D1(n) forms a matrix group (a subgroup of the units of `Matrix n n R`). -/
def D1_is_subgroup_of_units : Subgroup (Matrix n n R)ˣ := by
  -- proof omitted
  sorry
