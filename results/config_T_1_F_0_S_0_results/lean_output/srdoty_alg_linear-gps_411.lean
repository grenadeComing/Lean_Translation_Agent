import Mathlib

variable {R : Type _} {n : Type _} [CommRing R] [Fintype n] [DecidableEq n]

/-- D1(R, n) is the subgroup of SL(n, R) consisting of diagonal matrices of determinant 1. -/
def D1 : Type _ := { A : Matrix n n R // (∀ i j : n, i ≠ j → A i j = 0) ∧ Matrix.det A = 1 }

instance : Group D1 := by sorry