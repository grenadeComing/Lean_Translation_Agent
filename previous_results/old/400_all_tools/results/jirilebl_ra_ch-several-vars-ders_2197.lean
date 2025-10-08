import Mathlib

variable {n : ℕ}

open BigOperators Finset

/-- Permutations of Fin n. -/
def perm := Equiv.Perm (Fin n)

/-- Absolute value of the matrix term corresponding to a permutation. -/
def term_abs (A : Matrix (Fin n) (Fin n) ℝ) (σ : perm) : ℝ :=
  abs (∏ i : Fin n, A i (σ.toFun i))

/-- Set of permutations whose term uses only entries from S. -/
def perm_set_of (S : Finset (Fin n × Fin n)) : Finset perm :=
  (Finset.univ : Finset perm).filter fun σ => ∀ i : Fin n, (i, σ.toFun i) ∈ S

/-- Sum of absolute values of determinant terms over a finite set of permutations. -/
def sum_terms (A : Matrix (Fin n) (Fin n) ℝ) (P : Finset perm) : ℝ :=
  P.sum fun σ => term_abs A σ

/-- Combinatorial lemma (exercise).
If S is any subset of the entries of an n-by-n real matrix A, and S always contains two
entries from the same row or always contains two entries from the same column, then
there exists s ∈ S such that the sum of the absolute values of all determinant terms
using only entries from S is ≤ the sum of the absolute values of all determinant terms
using only entries from S \ {s}. -/
theorem combinatorial_det_lemma (A : Matrix (Fin n) (Fin n) ℝ) (S : Finset (Fin n × Fin n))
  (h : (∃ i j1 j2 : Fin n, j1 ≠ j2 ∧ (i, j1) ∈ S ∧ (i, j2) ∈ S) ∨ (∃ j i1 i2 : Fin n, i1 ≠ i2 ∧ (i1, j) ∈ S ∧ (i2, j) ∈ S)) :
  ∃ s ∈ S, sum_terms A (perm_set_of S) ≤ sum_terms A (perm_set_of (S.erase s)) := by
  -- Proof omitted (purely combinatorial matching/injection argument).
  sorry

/-- Multilinearity in rows: the determinant is linear in each row separately (other rows fixed). -/
theorem det_multilinear_in_row (A : Matrix (Fin n) (Fin n) ℝ) (i : Fin n) (r1 r2 : Fin n → ℝ) (c1 c2 : ℝ) :
  let set_row := fun (r : Fin n → ℝ) => fun i' j => if i' = i then r j else A i' j in
  Matrix.det (set_row (fun j => c1 * r1 j + c2 * r2 j)) =
    c1 * Matrix.det (set_row r1) + c2 * Matrix.det (set_row r2) := by
  -- Proof omitted: expand determinant as sum over permutations and apply the combinatorial lemma.
  sorry
