import Mathlib

open Matrix

variable (n : ℕ)

/-- The orthogonal group O(n) realized as a subset of the units of n×n real matrices. -/
def O_mat : Set ((Matrix (Fin n) (Fin n) ℝ)ˣ) :=
  {U | (U : Matrix (Fin n) (Fin n) ℝ)ᵀ * (U : Matrix (Fin n) (Fin n) ℝ) = 1 }

/-- The special orthogonal group SO(n): orthogonal matrices with determinant 1. -/
def SO_set : Set ((Matrix (Fin n) (Fin n) ℝ)ˣ) :=
  {U | (U : Matrix (Fin n) (Fin n) ℝ)ᵀ * (U : Matrix (Fin n) (Fin n) ℝ) = 1 ∧ (U : Matrix (Fin n) (Fin n) ℝ).det = 1 }

/-- SO(n) is a subgroup (matrix group) of the units of n×n real matrices. -/
def SO_is_subgroup : Subgroup ((Matrix (Fin n) (Fin n) ℝ)ˣ) := by sorry
