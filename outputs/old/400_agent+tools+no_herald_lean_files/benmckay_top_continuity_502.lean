import Mathlib

open Matrix

variable {n : ℕ}

def gram (M : Matrix (Fin n) (Fin n) ℝ) : Matrix (Fin n) (Fin n) ℝ := Matrix.transpose M * M

theorem exists_continuous_g (f : Matrix (Fin n) (Fin n) ℝ → ℝ)
  (hf : Continuous f)
  (hU : ∀ (U : Matrix (Fin n) (Fin n) ℝ), Matrix.transpose U * U = 1 -> ∀ M, f (U * M) = f M) :
  ∃ (g : {A : Matrix (Fin n) (Fin n) ℝ // ∃ M, A = gram M} → ℝ),
    Continuous g ∧ ∀ M, g ⟨gram M, ⟨M, rfl⟩⟩ = f M := by
  sorry
