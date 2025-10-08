import Mathlib

/-!
  Translation of the combinatorial determinant statement and the multilinearity in rows.
  The combinatorial inequality is stated for real matrices and finite subsets S of entries.
  The multilinearity statement is given for matrices over a commutative ring.

  Proofs are omitted (marked `by sorry`).
-/

open Matrix
open Equiv
open Finset

variable {n : Type*} [Fintype n] [DecidableEq n]

-- Combinatorial inequality about determinant terms
theorem det_terms_subset_inequality (A : Matrix n n ℝ) (S : Finset (n × n))
  (h : (∃ (i : n) (j1 j2 : n), j1 ≠ j2 ∧ (i, j1) ∈ S ∧ (i, j2) ∈ S) ∨
       (∃ (j : n) (i1 i2 : n), i1 ≠ i2 ∧ (i1, j) ∈ S ∧ (i2, j) ∈ S)) :
  ((Finset.univ : Finset (Perm n)).filter (fun σ => ∀ i, (i, σ i) ∈ S)).sum (fun σ => abs (∏ i, A i (σ i)))
  ≤
  S.sum (fun s => ((Finset.univ : Finset (Perm n)).filter (fun σ => ∀ i, (i, σ i) ∈ S.erase s)).sum fun σ => abs (∏ i, A i (σ i))) := by
  -- purely combinatorial argument omitted
  sorry

-- Multilinearity of determinant in each row (fixing other rows)
variable {R : Type*} [CommRing R]

theorem det_multilinear_in_row {M : Matrix n n R} (r : n) (v1 v2 : n → R) (a b : R) :
  Matrix.det (M.updateRow r fun j => a * v1 j + b * v2 j) =
    a * Matrix.det (M.updateRow r v1) + b * Matrix.det (M.updateRow r v2) := by
  -- follows from the combinatorial property of the determinant (proof omitted)
  sorry
