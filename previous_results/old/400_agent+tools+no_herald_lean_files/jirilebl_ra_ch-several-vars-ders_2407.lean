import Mathlib

open ContinuousLinearMap

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- If L is an invertible bounded linear operator (continuous linear equiv),
then small perturbations of L are also invertible and the inverse has the bound
from the Neumann series. -/
theorem invertible_under_small_perturbation (L : E ≃L[𝕜] F) :
  ∃ δ > 0, ∀ (A : E →L[𝕜] F), ‖A - L.toContinuousLinearMap‖ < δ →
    ∃ (Ainv : F →L[𝕜] E), Ainv.comp A = ContinuousLinearMap.id 𝕜 E ∧ A.comp Ainv = ContinuousLinearMap.id 𝕜 F ∧
      ‖Ainv‖ ≤ ‖L.symm.toContinuousLinearMap‖ / (1 - ‖L.symm.toContinuousLinearMap‖ * ‖A - L.toContinuousLinearMap‖) := by
  sorry
