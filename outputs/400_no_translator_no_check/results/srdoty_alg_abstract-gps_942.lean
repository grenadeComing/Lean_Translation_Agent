import Mathlib

/-!
Let F be a field, let G be a subgroup of GL_n(F), and define
H = {A ∈ G : det A = ±1}.
We state that H is a subgroup of G.
-/

variable {F : Type*} [Field F]
variable {n : Type*} [DecidableEq n] [Fintype n]

open Matrix

-- G is a subgroup of the general linear group GL n F
variable (G : Subgroup (GL n F))

/-- The subset H of GL n F consisting of those elements of G whose determinant is ±1. -/
def H_set : Set (GL n F) :=
  {A | A ∈ (G : Set (GL n F)) ∧ (Matrix.det (A : Matrix n n F) = 1 ∨ Matrix.det (A : Matrix n n F) = -1)}

/-- There exists a subgroup H of GL n F contained in G whose underlying set is H_set.
(This is the statement: H is a subgroup of G.) -/
theorem H_is_subgroup_of_G :
  ∃ (Hsub : Subgroup (GL n F)), (Hsub ≤ G) ∧ (∀ A : GL n F, A ∈ Hsub ↔ A ∈ H_set G) :=
by
  sorry
