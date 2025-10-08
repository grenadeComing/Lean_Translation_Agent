import Mathlib

/-
Let F be a field, let G be a subgroup of GL_n(F), and define
H = {A ∈ G | det A = ±1}.
We state that H is a subgroup of G.
-/

variable {F : Type _} [Field F]
variable {n : Type _} [Fintype n] [DecidableEq n]

open Matrix

/-- The subset H of invertible n×n matrices (units of Matrix n n F) consisting of
those elements of G whose determinant is ±1. -/
def H (G : Subgroup (Units (Matrix n n F))) : Set (Units (Matrix n n F)) :=
  { A | A ∈ (G : Set (Units (Matrix n n F))) ∧ (det (A.val : Matrix n n F) = (1 : F) ∨ det (A.val : Matrix n n F) = -1) }

/-- H is a subgroup of G. (Statement only; proof omitted.) -/
def H_is_subgroup (G : Subgroup (Units (Matrix n n F))) : Subgroup (Units (Matrix n n F)) := by
  sorry
