import Mathlib
open Matrix
open scoped Matrix

/-- GL(n) as the set of invertible n×n matrices over the reals. -/
def GL_set (n : Nat) : Set (Matrix (Fin n) (Fin n) Real) := {A | IsUnit A}

/-- O(n) as the set of orthogonal matrices (invertible and A * Aᵀ = I). -/
def O_set (n : Nat) : Set (Matrix (Fin n) (Fin n) Real) := {A | IsUnit A ∧ A * A.transpose = 1}

/-- Prove that O(n) = {A ∈ GL(n) | A * Aᵀ = I}. -/
theorem orthogonal_group_eq_set_of (n : Nat) : O_set n = {A ∈ GL_set n | A * A.transpose = 1} := by sorry