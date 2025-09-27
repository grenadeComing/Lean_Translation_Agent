import Mathlib

variable {R : Type _} [CommRing R]
variable {n : Nat}

/-- A matrix is diagonal if all off-diagonal entries are zero. -/
def is_diagonal (A : Matrix (Fin n) (Fin n) R) : Prop := ∀ i j, i ≠ j → A i j = 0

/-- The set D(n) of invertible diagonal matrices (as a subset of GL(n,R)). -/
def Dn : Set (Units (Matrix (Fin n) (Fin n) R)) := {M | is_diagonal (M : Matrix (Fin n) (Fin n) R)}

/-- D(n) is a matrix group (a subgroup of the units of Matrix n n R). -/
noncomputable def Dn_is_subgroup : Subgroup (Units (Matrix (Fin n) (Fin n) R)) := by
  -- proof omitted
  sorry
