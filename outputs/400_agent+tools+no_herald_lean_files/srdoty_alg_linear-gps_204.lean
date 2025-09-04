import Mathlib

universe u

/-- A simple type describing the three kinds of elementary row operations on an n×n matrix over R. -/
inductive ElemRowOp (R : Type u) (n : Nat) : Type u
| swap  (i j : Fin n) : ElemRowOp R n
| scale (i : Fin n) (c : R) : ElemRowOp R n
| addMul (i j : Fin n) (c : R) : ElemRowOp R n

/-- Apply an elementary row operation to a matrix. -/
axiom applyElemRowOp {R : Type u} {n : Nat} : ElemRowOp R n → Matrix (Fin n) (Fin n) R → Matrix (Fin n) (Fin n) R

/-- Given an elementary row operation op, produce the corresponding elementary n×n matrix (obtained by
    applying op to the identity matrix). -/
axiom elemMatrixOfOp {R : Type u} {n : Nat} : ElemRowOp R n → Matrix (Fin n) (Fin n) R

/-- Main statement (translation of the natural-language claim):
    For any semiring R and positive integer n, if B is obtained from A by performing a single elementary
    row operation op, then B = U * A where U is the corresponding elementary matrix for op. -/
theorem elementary_row_op_left_mul {R : Type u} [Semiring R] {n : Nat} (A B : Matrix (Fin n) (Fin n) R)
  (op : ElemRowOp R n) (h : B = applyElemRowOp op A) :
  B = (elemMatrixOfOp op) * A := by
  -- proof omitted
  sorry
