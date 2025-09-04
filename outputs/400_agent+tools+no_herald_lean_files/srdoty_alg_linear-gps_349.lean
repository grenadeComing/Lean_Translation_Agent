import Mathlib

open Matrix

variable {n : Type _} [Fintype n] [DecidableEq n]

theorem SL_is_subgroup {R : Type _} [CommRing R] :
  ∃ H : Subgroup ((Matrix n n R)ˣ),
    H.carrier = { u : (Matrix n n R)ˣ | Matrix.det (u : Matrix n n R) = 1 } := by
  -- The set of units with determinant 1 is a subgroup of the group of units of `Matrix n n R`.
  -- Proof omitted.
  sorry
