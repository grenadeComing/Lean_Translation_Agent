import Mathlib

/-- If A is an orthogonal n×n real matrix (Aᵀ A = 1), then its columns form an orthonormal basis
of ℝ^n. -/
theorem orthonormal_cols_of_orthogonal_mx {n : ℕ} (A : Matrix (Fin n) (Fin n) ℝ)
  (h : A.transpose * A = 1) :
  Orthonormal ℝ (fun j => A.col j) ∧ LinearIndependent ℝ (fun j => A.col j) ∧
    Submodule.span ℝ (Set.range (fun j => A.col j)) = ⊤ := by sorry
