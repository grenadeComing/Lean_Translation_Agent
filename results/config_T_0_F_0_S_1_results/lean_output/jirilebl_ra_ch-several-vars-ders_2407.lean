import Mathlib

theorem invertible_if_close_to_bounded_inverse {𝕜 : Type _} [NormedField 𝕜]
  {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y]
  [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]
  (L : X ≃L[𝕜] Y) :
  ∃ (δ : ℝ), 0 < δ ∧ ∀ (A : X →L[𝕜] Y), ∥A - L.toContinuousLinearMap∥ < δ →
    ∃ (B : Y →L[𝕜] X),
      B.comp A = ContinuousLinearMap.id 𝕜 X ∧ A.comp B = ContinuousLinearMap.id 𝕜 Y ∧
      ∥B∥ ≤ ∥L.symm.toContinuousLinearMap∥ / (1 - ∥L.symm.toContinuousLinearMap∥ * ∥A - L.toContinuousLinearMap∥) := by sorry
