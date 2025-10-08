import Mathlib

open Matrix Equiv

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- A predicate stating that a matrix is a permutation matrix: there exists a permutation `σ` of `n`
such that `P i j = 1` iff `j = σ i` (and 0 otherwise). -/
def is_permutation_matrix (P : Matrix n n R) : Prop :=
  ∃ (σ : Equiv.Perm n), P = fun i j => if j = σ i then (1 : R) else 0

theorem det_of_permutation_matrix_eq_one_or_neg_one {P : Matrix n n R} (h : is_permutation_matrix P) :
  P.det ∈ ({-1, 1} : Set R) := by sorry
