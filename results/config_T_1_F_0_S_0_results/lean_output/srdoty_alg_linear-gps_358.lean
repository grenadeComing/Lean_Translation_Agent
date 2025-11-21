import Mathlib

/-- The orthogonal group O(n) is the set of (real) n×n matrices A with A * Aᵀ = 1.
    We state that this set (viewed as a subset of the group of units of the matrix
    algebra) is a subgroup.  No proof is provided here. -/

theorem orthogonal_group_is_subgroup (n : Type*) [Fintype n] [DecidableEq n] :
  IsSubgroup { u : (Matrix n n ℝ)ˣ | (u : Matrix n n ℝ) * (u : Matrix n n ℝ)ᵀ = 1 } := by sorry