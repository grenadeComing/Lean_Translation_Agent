import Mathlib

open Matrix

/-- The three basic types of elementary row-operation matrices for n×n real matrices. -/
def swap_matrix {n : Nat} (i j : Fin n) : Matrix (Fin n) (Fin n) ℝ := fun r c =>
  if r = i then if c = j then 1 else 0
  else if r = j then if c = i then 1 else 0
  else if r = c then 1 else 0

def scale_matrix {n : Nat} (i : Fin n) (a : ℝ) : Matrix (Fin n) (Fin n) ℝ := fun r c =>
  if r = i then if r = c then a else 0
  else if r = c then 1 else 0

def row_add_matrix {n : Nat} (i j : Fin n) (a : ℝ) : Matrix (Fin n) (Fin n) ℝ := fun r c =>
  if r = i then if c = j then a else if r = c then 1 else 0
  else if r = c then 1 else 0

/-- Predicate saying a matrix is an elementary matrix (one elementary row operation applied to I). -/
def IsElementaryMatrix {n : Nat} (M : Matrix (Fin n) (Fin n) ℝ) : Prop :=
  (∃ (i j : Fin n), i ≠ j ∧ M = swap_matrix i j) ∨
  (∃ (i : Fin n) (a : ℝ), a ≠ 0 ∧ M = scale_matrix i a) ∨
  (∃ (i j : Fin n) (a : ℝ), i ≠ j ∧ M = row_add_matrix i j a)

/-- Any nonsingular n×n real matrix is a product of elementary matrices. -/
theorem matrix.exists_prod_of_elementary {n : Nat} (A : Matrix (Fin n) (Fin n) ℝ) (h : A.det ≠ 0) :
  ∃ (l : List (Matrix (Fin n) (Fin n) ℝ)), (∀ M ∈ l, IsElementaryMatrix M) ∧ l.prod = A := by sorry
