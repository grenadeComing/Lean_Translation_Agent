import Mathlib
open Matrix

/-- The orthogonal matrices O(n) form a group: the subtype of n×n real matrices with A * Aᵀ = 1 carries a Group structure. -/
noncomputable def orthogonal_group (n : ℕ) :
  Group (Subtype fun A : Matrix (Fin n) (Fin n) ℝ => A * Aᵀ = 1) := by
  -- We give the group structure by using matrix multiplication, identity 1, and inverse given by the transpose.
  -- Proof of the group axioms is omitted.
  sorry
