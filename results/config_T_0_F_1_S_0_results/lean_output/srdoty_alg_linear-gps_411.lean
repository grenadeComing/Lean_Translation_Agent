import Mathlib

open Matrix

variable {R : Type*} [CommRing R]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- D1 is the set of diagonal matrices of determinant 1. -/
def D1 : Set (Matrix n n R) :=
  { A | ∃ (d : n → R), A = Matrix.diagonal d ∧ Matrix.det A = (1 : R) }

/-- D1 is a matrix group: it contains the identity, is closed under multiplication,
    and every element has an inverse in D1. -/
theorem d1_is_matrix_group :
  (Matrix.diagonal (fun (_i : n) => (1 : R))) ∈ D1 ∧
  (∀ (A B : Matrix n n R), A ∈ D1 → B ∈ D1 → A * B ∈ D1) ∧
  (∀ (A : Matrix n n R), A ∈ D1 → ∃ (B : Matrix n n R), B * A = (1 : Matrix n n R) ∧ A * B = (1 : Matrix n n R) ∧ B ∈ D1) := by sorry
