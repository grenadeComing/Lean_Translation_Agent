import Mathlib

open BigOperators

/-- The product term for a permutation σ: ∏ i, A i (σ i). -/
def perm_term {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (σ : Equiv.Perm (Fin n)) : ℝ :=
  (Finset.univ : Finset (Fin n)).prod fun i => A i (σ i)

/-- Combinatorial lemma about determinant terms supported on a subset S of matrix positions. -/
theorem det_terms_subset_inequality {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (S : Finset (Fin n × Fin n))
  (h : (∃ r : Fin n, ∃ j1 j2 : Fin n, j1 ≠ j2 ∧ (r, j1) ∈ S ∧ (r, j2) ∈ S) ∨
       (∃ c : Fin n, ∃ i1 i2 : Fin n, i1 ≠ i2 ∧ (i1, c) ∈ S ∧ (i2, c) ∈ S))) :
  let perms : Finset (Equiv.Perm (Fin n)) := (Finset.univ : Finset (Equiv.Perm (Fin n))) in
  let P_S : Finset (Equiv.Perm (Fin n)) := perms.filter (fun σ => ∀ i : Fin n, (i, σ i) ∈ S) in
  let P_S_t : (Fin n × Fin n) → Finset (Equiv.Perm (Fin n)) := fun t =>
    perms.filter (fun σ => ∀ p, (p ∈ S) → (p ≠ t) → (σ p.1 = p.2)) in
  Finset.sum P_S (fun σ => Real.abs (perm_term A σ)) ≤
    Finset.sum S (fun t => Finset.sum (P_S_t t) (fun σ => Real.abs (perm_term A σ))) := by
  sorry

/-- Multilinearity of the determinant in each row. -/
theorem det_multilinear_row {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ) (k : Fin n) (v w : Fin n → ℝ) (a b : ℝ) :
  Matrix.det (A.updateRow k fun j => a * v j + b * w j) =
    a * Matrix.det (A.updateRow k fun j => v j) + b * Matrix.det (A.updateRow k fun j => w j) := by
  sorry
