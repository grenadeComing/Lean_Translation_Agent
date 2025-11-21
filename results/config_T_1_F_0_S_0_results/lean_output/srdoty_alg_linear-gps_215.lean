import Mathlib

variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Predicate for elementary n × n real matrices; intended to mean matrices obtained from the
    identity by a single elementary row operation. We leave it abstract here and only use the
    predicate in the statement of the theorem below. -/
constant IsElementaryMatrix : Matrix n n ℝ → Prop

/-- Any nonsingular n × n real matrix A can be expressed as a product of elementary matrices. -/
theorem matrix_exists_prod_of_elementary (A : Matrix n n ℝ) (hA : IsUnit A) :
  ∃ (L : List (Matrix n n ℝ)), (∀ M ∈ L, IsElementaryMatrix M) ∧ L.prod = A := by sorry
