import Mathlib

open Matrix Equiv

variable {R : Type _} {n : Type _} [CommRing R] [Fintype n] [DecidableEq n]

theorem det_swap_cols (A : Matrix n n R) (j k : n) :
  Matrix.det ((Matrix.reindex (Equiv.refl n) (Equiv.swap j k)).toFun A) = - Matrix.det A := by
  sorry

theorem det_swap_rows (A : Matrix n n R) (j k : n) :
  Matrix.det ((Matrix.reindex (Equiv.swap j k) (Equiv.refl n)).toFun A) = - Matrix.det A := by
  sorry

theorem det_eq_zero_if_equal_rows (A : Matrix n n R) {i j : n} (h : i ≠ j)
  (heq : ∀ k, A i k = A j k) :
  Matrix.det A = 0 := by
  sorry

theorem det_eq_zero_if_equal_cols (A : Matrix n n R) {i j : n} (h : i ≠ j)
  (heq : ∀ k, A k i = A k j) :
  Matrix.det A = 0 := by
  sorry
