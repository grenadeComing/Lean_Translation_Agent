import Mathlib

open Matrix

universe u v

/-- `SL n R` is the special linear group: n×n matrices over R with determinant 1. -/
def SL (n : Type u) (R : Type v) [DecidableEq n] [Fintype n] [CommRing R] : Type _ :=
  { A : Matrix n n R // A.det = 1 }

/-- The subtype of matrices with determinant 1 carries a group structure under matrix multiplication.
    Proof omitted. -/
instance SL_group (n : Type u) [DecidableEq n] [Fintype n] {R : Type v} [CommRing R] : Group (SL n R) := by sorry
