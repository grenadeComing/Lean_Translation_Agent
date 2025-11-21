import Mathlib

/-!
Translate: Let L : X → Y be a linear operator between normed vector spaces and suppose L is
invertible and L^{-1} is bounded. Show that there exists some δ > 0 such that if ∥A - L∥ < δ,
then A is invertible and ∥A^{-1}∥ ≤ ∥L^{-1}∥ / (1 - ∥L^{-1}∥ ∥A - L∥).

We state this in Mathlib style using a continuous linear equivalence `e : E ≃L[𝕜] F`.
-/

variables {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

theorem exists_delta_invertible_of_bounded_inverse (e : E ≃L[𝕜] F) :
  ∃ δ : ℝ, 0 < δ ∧
    ∀ A : E →L[𝕜] F, ‖A - e.toContinuousLinearMap‖ < δ →
      ∃ B : F →L[𝕜] E,
        B.comp A = ContinuousLinearMap.id 𝕜 E ∧
        A.comp B = ContinuousLinearMap.id 𝕜 F ∧
        ‖B‖ ≤ ‖e.symm.toContinuousLinearMap‖ /
          (1 - ‖e.symm.toContinuousLinearMap‖ * ‖A - e.toContinuousLinearMap‖) := by sorry