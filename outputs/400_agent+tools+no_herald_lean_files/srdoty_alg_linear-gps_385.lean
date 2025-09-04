import Mathlib

open Matrix

variable {n : Type _} [DecidableEq n] [Fintype n]

/-- The (real) orthogonal group as units of the matrix algebra. -/
def O : Set (Units (Matrix n n ℝ)) :=
  {A | A.val.transpose * A.val = 1}

/-- The special orthogonal group SO(n) = {A ∈ O(n) | det A = 1} as a set of units. -/
def SO : Set (Units (Matrix n n ℝ)) :=
  {A | A.val.transpose * A.val = 1 ∧ Matrix.det A.val = 1}

/-- SO(n) is a subgroup of the group of units of the matrix algebra. Proof omitted. -/
noncomputable def SO_subgroup : Subgroup (Units (Matrix n n ℝ)) := by
  -- The subgroup structure is given by closure of the identity, products and inverses.
  -- We omit the formal proof here.
  sorry
