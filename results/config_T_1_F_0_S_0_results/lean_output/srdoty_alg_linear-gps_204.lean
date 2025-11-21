import Mathlib

variable {R : Type*} [Semiring R]

/-- The elementary matrix which swaps rows i and j. -/
def row_swap_matrix {n : ℕ} [DecidableEq (Fin n)] (i j : Fin n) : Matrix (Fin n) (Fin n) R :=
  fun a b =>
    if a = i then if b = j then 1 else 0
    else if a = j then if b = i then 1 else 0
    else if a = b then 1 else 0

/-- The elementary matrix which multiplies row i by r. -/
def row_scale_matrix {n : ℕ} [DecidableEq (Fin n)] (i : Fin n) (r : R) : Matrix (Fin n) (Fin n) R :=
  fun a b => if a = b then if a = i then r else 1 else 0

/-- The elementary matrix which adds r times row i to row j. -/
def row_add_matrix {n : ℕ} [DecidableEq (Fin n)] (i j : Fin n) (r : R) : Matrix (Fin n) (Fin n) R :=
  fun a b => if a = b then 1 else if a = j then if b = i then r else 0 else 0

/-- For any positive integer n, if A is an n×n matrix and B is obtained from A by performing a
single elementary row operation (a swap, a scaling of one row by a nonzero scalar, or adding a
multiple of one row to another), then there exists the corresponding n×n elementary matrix U
such that B = U * A. -/
theorem elementary_row_operation_exists_matrix_mul {n : ℕ} (hn : 0 < n) [DecidableEq (Fin n)]
  (A B : Matrix (Fin n) (Fin n) R) :
  ( (∃ i j : Fin n, B = (row_swap_matrix (i := i) (j := j)) * A)
    ∨ (∃ i : Fin n, ∃ r : R, r ≠ 0 ∧ B = (row_scale_matrix i r) * A)
    ∨ (∃ i j : Fin n, ∃ r : R, B = (row_add_matrix i j r) * A) ) := by sorry