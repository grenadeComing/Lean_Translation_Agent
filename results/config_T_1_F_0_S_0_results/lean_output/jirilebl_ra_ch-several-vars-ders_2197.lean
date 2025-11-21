import Mathlib

open Finset
open Matrix
open Equiv

variable {n : Type*}
variable {R : Type*}

section combinatorial_lemma

variable [Fintype n] [DecidableEq n]

/-- The set of matrix positions used by a permutation `p`. -/
def perm_positions (p : Perm n) : Finset (n × n) :=
  (Finset.univ : Finset n).image fun i => (i, p i)

/-- The absolute value of the matrix term corresponding to a permutation `p`. -/
def perm_term_abs (A : Matrix n n ℝ) (p : Perm n) : ℝ :=
  (Finset.univ : Finset n).prod fun i => Real.abs (A i (p i))

/-- Combinatorial lemma: if a finite subset `S` of matrix positions contains two entries
    in the same row or two entries in the same column, then there exists an element `s ∈ S`
    such that the sum of the absolute values of determinant terms whose positions are
    contained in `S` is bounded by the sum of absolute values of determinant terms that
    contain all of `S` except `s` (i.e. whose set of positions is a superset of `S.erase s`). -/
theorem det_terms_bound_by_erase_element (A : Matrix n n ℝ) (S : Finset (n × n)) :
  (∃ i j1 j2, j1 ≠ j2 ∧ (i, j1) ∈ S ∧ (i, j2) ∈ S) ∨
  (∃ j i1 i2, i1 ≠ i2 ∧ (i1, j) ∈ S ∧ (i2, j) ∈ S) →
  ∃ s ∈ S,
    (∑ p in (Finset.univ : Finset (Perm n)).filter (fun p => perm_positions p ⊆ S), perm_term_abs A p)
    ≤
    (∑ p in (Finset.univ : Finset (Perm n)).filter (fun p => S.erase s ⊆ perm_positions p), perm_term_abs A p) := by sorry

end combinatorial_lemma

section multilinearity

variable [Fintype n] [DecidableEq n]

/-- Update the `i`-th row of a matrix. -/
def update_row (A : Matrix n n ℝ) (i : n) (v : n → ℝ) : Matrix n n ℝ :=
  fun i' j => if i' = i then v j else A i' j

/-- Determinant is additive in each row: replacing the `i`-th row by `v + w` splits the determinant. -/
theorem det_update_row_add (A : Matrix n n ℝ) (i : n) (v w : n → ℝ) :
  Matrix.det (update_row A i fun j => v j + w j)
  = Matrix.det (update_row A i v) + Matrix.det (update_row A i w) := by sorry

/-- Determinant is homogeneous in each row: scaling a row scales the determinant. -/
theorem det_update_row_smul (A : Matrix n n ℝ) (i : n) (c : ℝ) (v : n → ℝ) :
  Matrix.det (update_row A i fun j => c * v j) = c * Matrix.det (update_row A i v) := by sorry

end multilinearity
