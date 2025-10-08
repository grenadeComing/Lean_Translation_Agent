import Mathlib

open Matrix

variable {F : Type _} [Field F]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- Given a subgroup G of GL(n, F), H_set G is the subset of G consisting of matrices with determinant ±1. -/
def H_set (G : Subgroup (GL n F)) : Set (GL n F) := fun A => A ∈ (G : Set (GL n F)) ∧ (det (A : Matrix n n F) = 1 ∨ det (A : Matrix n n F) = -1)

/-- There exists a subgroup of GL(n, F) whose underlying set is H_set G (i.e., H is a subgroup of G). -/
theorem H_is_subgroup (G : Subgroup (GL n F)) : ∃ H : Subgroup (GL n F), (H : Set (GL n F)) = H_set G := by
  sorry
