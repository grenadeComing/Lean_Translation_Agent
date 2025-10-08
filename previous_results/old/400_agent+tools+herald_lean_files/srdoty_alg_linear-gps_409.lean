import Mathlib

/-- Elementary matrix obtained from the identity by adding t times row j to row i. -/
def E_ij {n : Type*} [DecidableEq n] [Fintype n] (R : Type*) [CommRing R] (i j : n) (t : R) : Matrix n n R :=
  fun a b => if a = b then 1 else if a = i ∧ b = j then t else 0

/-- The elementary matrix E_ij(t) has determinant 1. -/
theorem E_ij_det_one {n : Type*} [DecidableEq n] [Fintype n] (R : Type*) [CommRing R]
    {i j : n} (t : R) (h : i ≠ j) : (E_ij (R := R) i j t).det = 1 := by sorry

#eval "File saved: srdoty_alg_linear-gps_409.lean"