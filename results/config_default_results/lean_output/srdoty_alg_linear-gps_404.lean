import Mathlib

open Matrix

section diagonal_subgroup

variable {n : ℕ} {R : Type*} [CommRing R]

/-- D(n) as a subset of the unit group of M_n(R): invertible diagonal matrices. -/
def D_units : Set (Units (Matrix (Fin n) (Fin n) R)) :=
  { u | ∀ i j, i ≠ j → (u : Matrix (Fin n) (Fin n) R) i j = 0 }

/-- The set D(n) of diagonal invertible matrices is a subgroup of the unit group of M_n(R). -/
def D_units_subgroup : Subgroup (Units (Matrix (Fin n) (Fin n) R)) := by sorry

end diagonal_subgroup
