import Mathlib

/-!
  Combinatorial property of the determinant and consequence: determinant is multilinear in the rows.
  The statements below formalize the combinatorial inequality described in the problem and the
  multilinearity of the determinant in each row.  Proofs are omitted (``sorry'').
-/

open Set

theorem combinatorial_det_ineq {n : Type _} [Fintype n] [DecidableEq n]
  (A : Matrix n n ℝ) (S : Set (n × n))
  (hS : (∃ i j1 j2 : n, j1 ≠ j2 ∧ (i, j1) ∈ S ∧ (i, j2) ∈ S) ∨
        (∃ j i1 i2 : n, i1 ≠ i2 ∧ (i1, j) ∈ S ∧ (i2, j) ∈ S)) :
  let perms_only_S := (Finset.univ : Finset (Equiv.Perm n)).filter (λ σ, ∀ i, (i, σ i) ∈ S) in
  let perms_except_one := (Finset.univ : Finset (Equiv.Perm n)).filter (λ σ, ∃ s0 ∈ S, ∀ i, (i, σ i) ∈ S \ {s0}) in
  (∑ σ in perms_only_S, abs (∏ i, A i (σ i))) ≤ (∑ σ in perms_except_one, abs (∏ i, A i (σ i))) := by sorry

/-- The determinant is linear in each row separately (multilinearity in rows). -/
theorem det_multilinear_rows {R : Type _} [CommRing R] {n : Type _} [Fintype n] [DecidableEq n]
  (i : n) :
  ∀ (A : Matrix n n R) (u v : n → R) (c : R),
    Matrix.det (A.updateRow i (u + v)) = Matrix.det (A.updateRow i u) + Matrix.det (A.updateRow i v) ∧
    Matrix.det (A.updateRow i (c • u)) = c * Matrix.det (A.updateRow i u) := by sorry
