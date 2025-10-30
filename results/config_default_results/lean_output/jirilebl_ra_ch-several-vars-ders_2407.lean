import Mathlib
open Classical

noncomputable section

section
variable {𝕜 : Type*} [NormedField 𝕜]
variable {X Y : Type*} [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]
variable (L : X →L[𝕜] Y)
variable (h_inv : ∃ Linv : Y →L X, Linv.comp L = ContinuousLinearMap.id X ∧ L.comp Linv = ContinuousLinearMap.id Y)

lemma neumann_perturbation_delta
  : ∃ δ : ℝ, 0 < δ ∧ ∀ A : X →L[𝕜] Y, ∥A - L∥ < δ → ∃ Ainv : Y →L X, A.comp Ainv = ContinuousLinearMap.id Y ∧ Ainv.comp A = ContinuousLinearMap.id X ∧
    ∥Ainv∥ ≤ ∥ (Classical.choose h_inv) ∥ / (1 - ∥ (Classical.choose h_inv) ∥ * ∥ A - L ∥) :=
by
  -- proof omitted
  sorry

end
