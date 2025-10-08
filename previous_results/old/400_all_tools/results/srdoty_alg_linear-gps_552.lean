import Mathlib

noncomputable def rho : ℝ → (Fin 2 → ℝ) ≃ₗᵢ[ℝ] (Fin 2 → ℝ) :=
  fun _ => LinearIsometryEquiv.refl ℝ (Fin 2 → ℝ)

theorem so2_equiv_rotations :
  (↥(Matrix.specialOrthogonalGroup (Fin 2) ℝ)) ≃ { f : (Fin 2 → ℝ) ≃ₗᵢ[ℝ] (Fin 2 → ℝ) | ∃ θ : ℝ, f = rho θ } := by
  sorry
