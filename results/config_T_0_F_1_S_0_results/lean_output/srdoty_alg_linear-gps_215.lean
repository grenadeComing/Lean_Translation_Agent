import Mathlib

open Matrix

/-- Swap rows i and j matrix. -/
def elementary_swap {n : Nat} (i j : Fin n) : Matrix (Fin n) (Fin n) Real :=
  fun r c =>
    if r = i then if c = j then 1 else 0
    else if r = j then if c = i then 1 else 0
    else if r = c then 1 else 0

/-- Scale row i by a ≠ 0. -/
def elementary_scale {n : Nat} (i : Fin n) (a : Real) : Matrix (Fin n) (Fin n) Real :=
  fun r c => if r = c then if r = i then a else 1 else 0

/-- Add a times row j to row i (i ≠ j). -/
def elementary_add {n : Nat} (i j : Fin n) (a : Real) : Matrix (Fin n) (Fin n) Real :=
  fun r c =>
    if r = i then if c = j then a else if r = c then 1 else 0
    else if r = c then 1 else 0

/-- Predicate saying a matrix is one of the three elementary types. -/
def IsElementaryMatrix {n : Nat} (M : Matrix (Fin n) (Fin n) Real) : Prop :=
  (∃ (i j : Fin n), i ≠ j ∧ M = elementary_swap i j)
    ∨ (∃ (i : Fin n) (a : Real), a ≠ 0 ∧ M = elementary_scale i a)
    ∨ (∃ (i j : Fin n) (a : Real), i ≠ j ∧ M = elementary_add i j a)

/-- Any nonsingular n×n real matrix A can be expressed as a product of elementary matrices. -/
theorem nonsingular_matrix_is_product_of_elementary_matrices (n : Nat) (A : Matrix (Fin n) (Fin n) Real) :
  Matrix.det A ≠ 0 → ∃ (L : List (Matrix (Fin n) (Fin n) Real)),
    (∀ M ∈ L, IsElementaryMatrix M) ∧ List.foldl (fun acc M => acc * M) (1 : Matrix (Fin n) (Fin n) Real) L = A := by sorry
