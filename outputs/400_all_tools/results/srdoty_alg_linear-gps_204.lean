import Mathlib

/-!
Translate: For any positive integer n, if A is an n×n matrix and B is the matrix
obtained from A by performing a single elementary row operation, then B = U * A,
where U is the corresponding elementary n×n elementary matrix of the same type.

We define an inductive type for row operations, a function that applies a row
operation to a matrix, construct the elementary matrix by applying the
operation to the identity, and define a matrix multiplication using Finset.univ.sum.
Finally we state the theorem that applying the row operation to A equals
(elementary_matrix op) * A. The proof is omitted (:= by sorry).
-/

open Matrix
open Finset

inductive RowOp (R : Type _) (n : Nat) : Type _
  | swap (i j : Fin n) : RowOp R n
  | scale (i : Fin n) (c : R) : RowOp R n
  | add (i j : Fin n) (c : R) : RowOp R n

variable {R : Type _} {n : Nat}

/-- Apply a single elementary row operation to an n × n matrix. -/
def apply_row_op [Semiring R] (op : RowOp R n) (A : Matrix (Fin n) (Fin n) R) :
  Matrix (Fin n) (Fin n) R :=
  match op with
  | RowOp.swap i j => fun r c => if r = i then A j c else if r = j then A i c else A r c
  | RowOp.scale i a => fun r c => if r = i then a * A i c else A r c
  | RowOp.add i j a => fun r c => if r = i then A i c + a * A j c else A r c

/-- The elementary matrix corresponding to an elementary row operation is the
result of applying that operation to the identity matrix. -/
def elementary_matrix [Semiring R] (op : RowOp R n) : Matrix (Fin n) (Fin n) R :=
  apply_row_op op (1 : Matrix (Fin n) (Fin n) R)

/-- Matrix multiplication defined using Finset.univ.sum. -/
def mat_mul [Semiring R] (A B : Matrix (Fin n) (Fin n) R) : Matrix (Fin n) (Fin n) R :=
  fun i k => (Finset.univ).sum fun j : Fin n => A i j * B j k

/-- Applying an elementary row operation to A is the same as left-multiplying
A by the corresponding elementary matrix. Proof omitted. -/
theorem apply_row_op_eq_mat_mul [Semiring R] (op : RowOp R n) (A : Matrix (Fin n) (Fin n) R) :
  apply_row_op op A = mat_mul (elementary_matrix op) A := by sorry
