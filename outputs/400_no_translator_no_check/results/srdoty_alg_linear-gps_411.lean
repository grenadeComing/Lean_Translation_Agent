import Mathlib

variable {n : Type*} [DecidableEq n] [Fintype n] {R : Type*} [CommRing R]

/-- D1: the subset of SL(n, R) consisting of diagonal matrices. -/
def D1_set : Set (Matrix.SpecialLinearGroup n R) := { A | ∃ d : n → R, (A : Matrix n n R) = Matrix.diagonal d }

/-- The set of diagonal matrices in SL(n, R) is a subgroup (matrix group). -/
noncomputable def D1_is_subgroup : Subgroup (Matrix.SpecialLinearGroup n R) := by
  -- Proof omitted.
  sorry
