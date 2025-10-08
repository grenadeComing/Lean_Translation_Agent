import Mathlib
open Matrix

variable (n : ℕ)

/-- SO(n) as a subset of the units of n×n real matrices: u such that u * uᵀ = I and det u = 1. -/
def SO_units : Set ((Matrix (Fin n) (Fin n) ℝ)ˣ) :=
  { u | (u : Matrix (Fin n) (Fin n) ℝ) ⬝ (u : Matrix (Fin n) (Fin n) ℝ).transpose = 1
        ∧ Matrix.det (u : Matrix (Fin n) (Fin n) ℝ) = 1 }

/-- SO(n) is a subgroup of the group of units of n×n real matrices. -/
theorem is_subgroup_SO : IsSubgroup (SO_units n : Set ((Matrix (Fin n) (Fin n) ℝ)ˣ)) := by sorry
