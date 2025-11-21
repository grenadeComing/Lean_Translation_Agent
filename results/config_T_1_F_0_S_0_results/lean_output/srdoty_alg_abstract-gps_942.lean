import Mathlib

open Matrix

variable {F : Type*} [Field F]
variable {n : ℕ}
variable (G : Subgroup (Units (Matrix (Fin n) (Fin n) F)))

/-- H is the subset of G consisting of matrices with determinant ±1. -/
def H : Set (Units (Matrix (Fin n) (Fin n) F)) :=
  { A | A ∈ (G : Set _) ∧ (det (A : Matrix (Fin n) (Fin n) F) = (1 : F) ∨
    det (A : Matrix (Fin n) (Fin n) F) = -(1 : F)) }

theorem H_is_subgroup : IsSubgroup (H G) := by sorry