import Mathlib

open Matrix

/-- Predicate asserting that B is obtained from A by performing a single elementary row operation.
    This is an abstract predicate used to state the correspondence with elementary matrices. -/
constant ObtainedBySingleRowOperation :
  ∀ {n : ℕ} {R : Type*} [Semiring R], Matrix (Fin n) (Fin n) R → Matrix (Fin n) (Fin n) R → Prop

/-- Predicate asserting that a given matrix is an elementary n × n matrix (one of the three
    standard types: row swap, multiply a row by a nonzero scalar, add a scalar multiple of one
    row to another). This is left abstract here and used only in the statement. -/
constant IsElementaryMatrix :
  ∀ {n : ℕ} {R : Type*} [Semiring R], Matrix (Fin n) (Fin n) R → Prop

/-- For any positive integer n, if A is an n×n matrix and B is obtained from A by a single
    elementary row operation, then there exists an n×n elementary matrix U (of the corresponding
    type) such that B = U * A. -/
theorem row_op_left_multiplication_by_elementary
  (n : ℕ) (hn : 0 < n) (R : Type*) [Semiring R]
  (A B : Matrix (Fin n) (Fin n) R) :
  ObtainedBySingleRowOperation (A := A) (B := B) → ∃ (U : Matrix (Fin n) (Fin n) R),
    IsElementaryMatrix (U) ∧ B = U * A := by sorry
