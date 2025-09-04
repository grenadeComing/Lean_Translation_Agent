import Mathlib

variable {R : Type*} [CommRing R] {n : Nat}

def Mat := Fin n → Fin n → R

/-- Abstract predicate: B is obtained from A by a single elementary row operation. -/
constant ElemRowOp : Mat → Mat → Prop

/-- Abstract matrix multiplication. -/
constant mat_mul : Mat → Mat → Mat

/-- If B is obtained from A by a single elementary row operation, then there is an
    elementary matrix U such that B = U * A. -/
theorem elem_row_op_is_left_mul (A B : Mat) (h : ElemRowOp A B) :
  ∃ U : Mat, B = mat_mul U A := by
  sorry
