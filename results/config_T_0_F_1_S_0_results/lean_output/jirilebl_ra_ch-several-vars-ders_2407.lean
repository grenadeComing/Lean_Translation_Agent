import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {X : Type*} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
variable {Y : Type*} [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]

/--
If L : X ≃L[𝕜] Y is a bounded linear isomorphism, then small perturbations A of L are
also invertible, and the inverse satisfies the Neumann-series bound.
-/
theorem neumann_series_invertible_perturbation (L : X ≃L[𝕜] Y) :
  ∃ (δ : ℝ), δ > 0 ∧
    ∀ (A : X →L[𝕜] Y), ‖A - L.toContinuousLinearMap‖ < δ →
      ∃ (B : Y →L[𝕜] X),
        B.comp A = ContinuousLinearMap.id 𝕜 X ∧
        A.comp B = ContinuousLinearMap.id 𝕜 Y ∧
        ‖B‖ ≤ ‖L.symm.toContinuousLinearMap‖ / (1 - ‖L.symm.toContinuousLinearMap‖ * ‖A - L.toContinuousLinearMap‖) :=
  by sorry