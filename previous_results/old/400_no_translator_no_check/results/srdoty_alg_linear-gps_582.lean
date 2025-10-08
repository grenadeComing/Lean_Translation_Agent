import Mathlib

open Matrix

noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 ∧ j = 0 then Real.cos (2 * θ)
    else if i = 0 ∧ j = 1 then Real.sin (2 * θ)
    else if i = 1 ∧ j = 0 then Real.sin (2 * θ)
    else -Real.cos (2 * θ)

theorem reflection_improper_orthogonal (θ : ℝ) :
  (H θ).transpose * H θ = 1 ∧ Matrix.det (H θ) = -1 := by
  sorry
