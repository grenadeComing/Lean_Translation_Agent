import Mathlib

open BigOperators
open Matrix

/-- Combinatorial inequality on the permutation expansion of the determinant.
    Let S be a set of matrix positions (row, column). If S contains two entries
    in the same row or two entries in the same column, then the sum of the
    absolute values of the permutation-terms that use only entries from S is at
    most the sum of the absolute values of the permutation-terms that use all
    but one of the entries from S (i.e. use entries from S in all positions
    except possibly one). -/
theorem det_terms_combinatorial {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (S : Set (Fin n × Fin n))
  (hS : (∃ (i : Fin n) (j1 j2 : Fin n), j1 ≠ j2 ∧ (i, j1) ∈ S ∧ (i, j2) ∈ S) ∨
        (∃ (j : Fin n) (i1 i2 : Fin n), i1 ≠ i2 ∧ (i1, j) ∈ S ∧ (i2, j) ∈ S)) :
  (Finset.univ : Finset (Equiv.Perm (Fin n))).sum fun σ =>
    if ∀ i, (i, σ i) ∈ S then abs (Finset.univ.prod fun i => A i (σ i)) else 0 ≤
  (Finset.univ : Finset (Equiv.Perm (Fin n))).sum fun σ =>
    if (∃ (j : Fin n), ∀ (i : Fin n), i ≠ j → (i, σ i) ∈ S) then abs (Finset.univ.prod fun i => A i (σ i)) else 0 := by sorry

/-- Multilinearity of the determinant in each row: additivity. -/
theorem det_multilinear_rows_add {n : ℕ} (k : Fin n) (A : Matrix (Fin n) (Fin n) ℝ)
  (r s : Fin n → ℝ) :
  Matrix.det (fun i j => if i = k then r j + s j else A i j) =
    Matrix.det (fun i j => if i = k then r j else A i j) +
    Matrix.det (fun i j => if i = k then s j else A i j) := by sorry

/-- Multilinearity of the determinant in each row: homogeneity. -/
theorem det_multilinear_rows_smul {n : ℕ} (k : Fin n) (A : Matrix (Fin n) (Fin n) ℝ)
  (c : ℝ) (r : Fin n → ℝ) :
  Matrix.det (fun i j => if i = k then c * r j else A i j) =
    c * Matrix.det (fun i j => if i = k then r j else A i j) := by sorry

/-- Combined statement: the determinant is multilinear in the rows. -/
theorem det_is_multilinear_in_rows {n : ℕ} :
  ∀ k : Fin n,
    (fun row : Fin n → ℝ => Matrix.det (fun i j => if i = k then row j else (0 : ℝ)))
    isLinearMap := by sorry
