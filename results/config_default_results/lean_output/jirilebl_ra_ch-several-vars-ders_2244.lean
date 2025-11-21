import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n]

/-- The determinant of the permutation matrix associated to a bijection `σ : n ≃ n` (entries in Z)
    is either `1` or `-1`. -/
theorem det_perm_matrix_is_plus_minus_one_int (σ : n ≃ n) :
  Matrix.det (Matrix.of fun i j => if j = σ i then (1 : Int) else 0) = 1 ∨
    Matrix.det (Matrix.of fun i j => if j = σ i then (1 : Int) else 0) = -1 := by sorry