import Mathlib

/-- Factorization through the Gram matrix: if f is continuous and invariant under left-multiplication
    by orthogonal matrices, then f depends only on the Gram matrix Vᵀ * V. -/
theorem factor_through_gram (n : Nat) (f : Matrix (Fin n) (Fin n) ℝ → ℝ)
  (hf : Continuous f)
  (hU : ∀ (U : Matrix (Fin n) (Fin n) ℝ), (Matrix.transpose U) * U = 1 → ∀ V, f (U * V) = f V) :
  ∃ g : ({A : Matrix (Fin n) (Fin n) ℝ // ∃ V : Matrix (Fin n) (Fin n) ℝ, A = Matrix.transpose V * V} → ℝ),
    Continuous g ∧ ∀ V, f V = g ⟨Matrix.transpose V * V, ⟨V, rfl⟩⟩ := by sorry
