import Mathlib

/-- Elementary matrices for row operations on n×n matrices over a semiring R. -/

def e_swap (n : Nat) (R : Type _) [Semiring R] (i j : Fin n) : Matrix (Fin n) (Fin n) R :=
  fun r c =>
    if r = i then
      if c = j then (1 : R) else 0
    else if r = j then
      if c = i then (1 : R) else 0
    else if r = c then (1 : R) else 0

def e_mul_row (n : Nat) (R : Type _) [Semiring R] (i : Fin n) (u : Units R) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = c then if r = i then (u : R) else (1 : R) else 0

def e_row_add (n : Nat) (R : Type _) [Semiring R] (i j : Fin n) (a : R) : Matrix (Fin n) (Fin n) R :=
  fun r c => if r = c then (1 : R) else if r = i ∧ c = j then a else 0

/-- For any positive integer n, if A is an n×n matrix and B is obtained from A by a single
    elementary row operation, then B = U * A for the corresponding elementary matrix U. -/
theorem elementary_row_op_mul (n : Nat) (hn : 0 < n) (R : Type _) [Semiring R]
  (A B : Matrix (Fin n) (Fin n) R) :
  (∃ i j : Fin n, i ≠ j ∧ B = (e_swap n R i j) * A) ∨
  (∃ i : Fin n, ∃ u : Units R, B = (e_mul_row n R i u) * A) ∨
  (∃ i j : Fin n, i ≠ j ∧ ∃ a : R, B = (e_row_add n R i j a) * A) := by sorry
