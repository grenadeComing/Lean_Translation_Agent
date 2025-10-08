import Mathlib

open Matrix

variable {R : Type _} [Semiring R]
variable {n : Nat}

-- Predicates left abstract to mirror the informal statement.
variable (is_single_row_operation : Matrix (Fin n) (Fin n) R → Matrix (Fin n) (Fin n) R → Prop)
variable (is_elementary_matrix : Matrix (Fin n) (Fin n) R → Prop)

/-- For any n×n matrix A, if B is obtained from A by performing a single elementary row operation,
then there exists an n×n elementary matrix U of the corresponding type such that B = U * A. -/
lemma single_row_operation_is_left_mult_by_elementary
  (A B : Matrix (Fin n) (Fin n) R)
  (h : is_single_row_operation A B) :
  ∃ U : Matrix (Fin n) (Fin n) R, is_elementary_matrix U ∧ B = U * A := by sorry
