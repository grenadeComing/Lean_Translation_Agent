import Mathlib

variable {F : Type*} [Field F]
variable {n : Type*} [DecidableEq n] [Fintype n]
variable (G : Subgroup (GL n F))

/-- H = {A ∈ G | det A = ±1} as a set. -/
def H_set : Set (GL n F) :=
  { A | A ∈ G ∧ (Matrix.det (A : Matrix n n F) = 1 ∨ Matrix.det (A : Matrix n n F) = -1) }

/-- There exists a subgroup Hsub of GL_n(F) whose underlying set is H_set. -/
theorem H_is_subgroup_of_G :
  ∃ (Hsub : Subgroup (GL n F)),
    ∀ A : GL n F,
      A ∈ Hsub ↔ A ∈ G ∧ (Matrix.det (A : Matrix n n F) = 1 ∨ Matrix.det (A : Matrix n n F) = -1) :=
by sorry
