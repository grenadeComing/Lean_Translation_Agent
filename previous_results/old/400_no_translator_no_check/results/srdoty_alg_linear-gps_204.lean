import Mathlib

open Matrix

variable {R : Type _} [Ring R]
variable {n : Nat}

/-- Elementary matrices for three types of row operations. -/
def swap_matrix {n : Nat} (i j : Fin n) : Matrix (Fin n) (Fin n) R :=
  fun r c =>
    if r = i then if c = j then 1 else 0
    else if r = j then if c = i then 1 else 0
    else if r = c then 1 else 0

def mul_row_matrix {n : Nat} (i : Fin n) (k : R) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = c then if r = i then k else 1 else 0

def add_mul_rows_matrix {n : Nat} (i j : Fin n) (k : R) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = j then if c = i then k else if r = c then 1 else 0
               else if r = c then 1 else 0

/-- Applying each elementary row operation to a matrix A (explicit definitions). -/
def apply_swap {n : Nat} (A : Matrix (Fin n) (Fin n) R) (i j : Fin n) : Matrix (Fin n) (Fin n) R :=
  fun r c => A (if r = i then j else if r = j then i else r) c

def apply_mul_row {n : Nat} (A : Matrix (Fin n) (Fin n) R) (i : Fin n) (k : R) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = i then k * A i c else A r c

def apply_add_mul_rows {n : Nat} (A : Matrix (Fin n) (Fin n) R) (i j : Fin n) (k : R) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = j then A j c + k * A i c else A r c

/-- If B is obtained by swapping rows i and j of A, then B = (swap_matrix i j) * A. -/
theorem swap_rows_eq_mul (A : Matrix (Fin n) (Fin n) R) (i j : Fin n) :
  apply_swap A i j = swap_matrix i j * A := by
  sorry

/-- If B is obtained by multiplying row i of A by k, then B = (mul_row_matrix i k) * A. -/
theorem mul_row_eq_mul (A : Matrix (Fin n) (Fin n) R) (i : Fin n) (k : R) :
  apply_mul_row A i k = mul_row_matrix i k * A := by
  sorry

/-- If B is obtained by adding k times row i to row j of A, then B = (add_mul_rows_matrix i j k) * A. -/
theorem add_mul_rows_eq_mul (A : Matrix (Fin n) (Fin n) R) (i j : Fin n) (k : R) :
  apply_add_mul_rows A i j k = add_mul_rows_matrix i j k * A := by
  sorry
