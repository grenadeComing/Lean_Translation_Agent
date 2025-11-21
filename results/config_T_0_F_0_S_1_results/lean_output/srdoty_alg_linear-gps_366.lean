import Mathlib

open Matrix

/-- The orthogonal group O(n) as a set of n × n real matrices: those matrices which are units
    (invertible) and satisfy A * Aᵀ = 1. -/
def orthogonal_group (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | IsUnit A ∧ A * Aᵀ = 1 }

/-- The general linear group GL(n) as a set of n × n real matrices (the invertible matrices). -/
def general_linear_group (n : Nat) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | IsUnit A }

/-- Statement: O(n) = { A ∈ GL(n) | A * Aᵀ = 1 }. -/
theorem orthogonal_group_eq {n : Nat} :
  orthogonal_group n = { A | A ∈ general_linear_group n ∧ A * Aᵀ = 1 } := by sorry
