import Mathlib

open Metric

theorem neumann_series_perturbation {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]
  (L : E ≃L[𝕜] F) :
  ∃ δ : ℝ, δ > 0 ∧ ∀ (A : E →L[𝕜] F), ‖A - L.toContinuousLinearMap‖ < δ →
    ∃ (E_eq : E ≃L[𝕜] F), E_eq.toContinuousLinearMap = A ∧
      ‖E_eq.symm.toContinuousLinearMap‖ ≤ ‖L.symm.toContinuousLinearMap‖ /
        (1 - ‖L.symm.toContinuousLinearMap‖ * ‖A - L.toContinuousLinearMap‖) := by
  sorry
