import Mathlib

open Matrix

/-- Let A be an orthogonal n×n real matrix (Aᵀ ⬝ A = 1). Then its columns form an orthonormal family and span ℝ^n. -/
theorem orthonormal_cols_of_orthogonal (n : Nat) [DecidableEq (Fin n)]
  [InnerProductSpace ℝ (Fin n → ℝ)] (A : Matrix (Fin n) (Fin n) ℝ) (h : A.transpose ⬝ A = 1) :
  Orthonormal ℝ (fun i : Fin n => A.col i) ∧ span ℝ (Set.range fun i : Fin n => A.col i) = (⊤ : Submodule ℝ (Fin n → ℝ)) := by
  sorry
