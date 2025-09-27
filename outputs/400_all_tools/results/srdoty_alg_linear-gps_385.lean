import Mathlib

open Matrix

variable {n : Type _} [DecidableEq n] [Fintype n]

/-- Special orthogonal group SO(n) as units (invertible matrices) with A^T * A = I and det A = 1. -/
def SO : Set ((Matrix n n ℝ)ˣ) := {A | (A : Matrix n n ℝ)ᵀ * (A : Matrix n n ℝ) = 1 ∧ Matrix.det (A : Matrix n n ℝ) = 1}

/-- SO(n) is a subgroup of the group of invertible n×n real matrices. -/
def SO_is_subgroup : Subgroup ((Matrix n n ℝ)ˣ) := by
  -- proof omitted
  sorry
