import Mathlib

open Matrix

variable {n : Type*} [Fintype n] [DecidableEq n] {R : Type*} [CommRing R]

/-- A matrix is a permutation matrix if it has exactly one `1` in each row and column and `0` elsewhere; we
  express this by saying it equals the matrix induced by a permutation `σ : Perm n`. -/
def IsPermutationMatrix (P : Matrix n n R) : Prop :=
  ∃ (σ : Equiv.Perm n), P = fun i j => if j = σ i then (1 : R) else 0

/-- The determinant of a permutation matrix is either `1` or `-1`. -/
theorem perm_matrix_det_eq_neg_one_or_one (P : Matrix n n R) (h : IsPermutationMatrix P) :
  det P = (1 : R) ∨ det P = -1 := by sorry
