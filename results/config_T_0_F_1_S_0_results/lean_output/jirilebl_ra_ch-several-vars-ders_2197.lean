import Mathlib

open Function

variable {n : Type} [DecidableEq n] [Fintype n]

/--
A combinatorial bound on absolute values of determinant terms.
We consider the determinant expansion over permutations σ : Equiv.Perm n, and terms
corresponding to σ are the products of entries A i (σ i).
If S is a set of matrix positions (i, j) and S contains two entries from the same row
or two entries from the same column, then the sum of absolute values of all terms
that use only positions from S is bounded by the sum of absolute values of all terms
that use positions from S for all but possibly one row.
-/
theorem det_terms_subset_bound (A : Matrix n n Real) (S : Set (n × n))
  (h : (∃ i : n, ∃ j1 j2 : n, j1 ≠ j2 ∧ (i, j1) ∈ S ∧ (i, j2) ∈ S) ∨
       (∃ j : n, ∃ i1 i2 : n, i1 ≠ i2 ∧ (i1, j) ∈ S ∧ (i2, j) ∈ S))
  (dec_all : DecidablePred (fun σ : Equiv.Perm n => ∀ i, (i, σ i) ∈ S))
  (dec_exc : DecidablePred (fun σ : Equiv.Perm n => ∃ j, ∀ i, i = j ∨ (i, σ i) ∈ S)) :
  (∑ σ : Equiv.Perm n, if (∀ i, (i, σ i) ∈ S) then abs (Finset.univ.prod (fun i => A i (σ i))) else 0)
    ≤ (∑ σ : Equiv.Perm n, if (∃ j, ∀ i, i = j ∨ (i, σ i) ∈ S) then abs (Finset.univ.prod (fun i => A i (σ i))) else 0) := by sorry

/-- Update a single row of a matrix. -/
def update_row {R : Type _} (M : Matrix n n R) (i : n) (v : n → R) : Matrix n n R :=
  Function.update M i v

/-- The determinant is multilinear in the rows: for each fixed row index i,
the map v ↦ det (update_row M i v) is linear (additive and homogeneous).
-/
theorem det_multilinear_row {R : Type _} [CommRing R] (M : Matrix n n R) (i : n) :
  (∀ v w : n → R, Matrix.det (update_row M i (v + w)) = Matrix.det (update_row M i v) + Matrix.det (update_row M i w)) ∧
  (∀ (c : R) (v : n → R), Matrix.det (update_row M i (c • v)) = c * Matrix.det (update_row M i v)) := by sorry
