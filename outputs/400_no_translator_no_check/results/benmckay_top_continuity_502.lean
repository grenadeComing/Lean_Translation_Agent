import Mathlib

open Matrix BigOperators

variable {n : ℕ}

/-- The Gram matrix of n vectors v : Fin n → ℝ^n. Entry (i,j) = ⟪v i, v j⟫ = ∑_k v i k * v j k. -/
def gram (v : Fin n → Fin n → ℝ) : Matrix (Fin n) (Fin n) ℝ :=
  Matrix.of fun i j => ∑ k : Fin n, v i k * v j k

/-- Y is the set of symmetric positive semidefinite n×n real matrices. -/
def Y : Set (Matrix (Fin n) (Fin n) ℝ) :=
  { A | A.transpose = A ∧ ∀ x : Fin n → ℝ, ∑ i, x i * (A.mulVec x) i ≥ 0 }

/-- Main statement: a continuous function on n vectors in R^n which is invariant under
    simultaneous orthogonal transformations depends only on the Gram matrix. -/
theorem orth_invariant_depends_only_on_gram
  (f : (Fin n → Fin n → ℝ) → ℝ)
  (hf_cont : Continuous f)
  (is_orth : Matrix (Fin n) (Fin n) ℝ → Prop)
  (hf_orth : ∀ (U : Matrix (Fin n) (Fin n) ℝ) (v : Fin n → Fin n → ℝ), is_orth U → f (fun i => U.mulVec (v i)) = f v) :
  ∃ g : Matrix (Fin n) (Fin n) ℝ → ℝ, ContinuousOn g Y ∧ ∀ v, f v = g (gram v) := by
  sorry
