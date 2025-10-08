import Mathlib

variable {n : Type _} [DecidableEq n] [Fintype n]

/-- Multilinearity in each row: for a commutative ring R, fixing all other rows, the
map sending the i-th row to the determinant is linear. -/
theorem det_linear_in_row {R : Type _} [CommRing R] (A : Matrix n n R) (i : n) :
  ∀ (r s : n → R) (x y : R),
    Matrix.det (Function.update A i fun j => x * r j + y * s j) =
      x * Matrix.det (Function.update A i r) + y * Matrix.det (Function.update A i s) := by
  intro r s x y
  sorry
