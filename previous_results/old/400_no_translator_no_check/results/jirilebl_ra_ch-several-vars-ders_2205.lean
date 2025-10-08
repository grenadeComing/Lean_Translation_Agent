import Mathlib

/-!
Simple formalization of the standard properties of the determinant under row/column
swaps and the vanishing of the determinant when two rows or two columns are equal.
We only state the lemmas and leave the proofs as `sorry` (as requested).
-/

universe u v

open Equiv

section det_swap_and_equal_rows_cols

variable {n : Type u} [DecidableEq n] [Fintype n]
variable {R : Type v} [CommRing R]

/-- If `A'` is obtained from `A` by swapping columns `j` and `k`, then
`det A' = - det A`. We express the column-swap by reindexing the column
index via `Equiv.swap j k`. -/
theorem det_swap_columns (A : Matrix n n R) (j k : n) :
  Matrix.det ((Matrix.reindex (Equiv.refl n) (Equiv.swap j k)).toFun A) = - Matrix.det A := by
  sorry

/-- If `A'` is obtained from `A` by swapping rows `j` and `k`, then
`det A' = - det A`. We express the row-swap by reindexing the row
index via `Equiv.swap j k`. -/
theorem det_swap_rows (A : Matrix n n R) (j k : n) :
  Matrix.det ((Matrix.reindex (Equiv.swap j k) (Equiv.refl n)).toFun A) = - Matrix.det A := by
  sorry

/-- If two rows of `A` are equal then `det A = 0`. -/
theorem det_two_equal_rows (A : Matrix n n R) (i j : n)
  (h : ∀ c, A i c = A j c) : Matrix.det A = 0 := by
  sorry

/-- If two columns of `A` are equal then `det A = 0`. -/
theorem det_two_equal_cols (A : Matrix n n R) (i j : n)
  (h : ∀ r, A r i = A r j) : Matrix.det A = 0 := by
  sorry

end det_swap_and_equal_rows_cols
