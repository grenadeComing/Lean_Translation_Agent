import Mathlib

open Matrix

/-- The set of n×n real matrices satisfying A * A.transpose = 1. -/
def O_set (n : ℕ) : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A * A.transpose = 1 }

/-- The orthogonal group as a subgroup of the group of units of n×n real matrices. -/
def O (n : ℕ) : Subgroup ((Matrix (Fin n) (Fin n) ℝ)ˣ) := by
  -- We assert the subgroup of units whose underlying matrix satisfies A * A.transpose = 1.
  -- Proof of subgroup properties is omitted.
  sorry
