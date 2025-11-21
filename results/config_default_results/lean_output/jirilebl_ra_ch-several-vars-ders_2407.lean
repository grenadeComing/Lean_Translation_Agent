import Mathlib

/-- Let 𝕜 be a nontrivially normed field, X and Y normed vector spaces over 𝕜. Let L : X ≃L[𝕜] Y be a continuous linear equivalence (so L and L.symm are bounded). Show there exists δ > 0 such that for every continuous linear map A : X →L[𝕜] Y with ‖A - L.toContinuousLinearMap‖ < δ, the map A is invertible (there exists Ainv : Y →L[𝕜] X which is both left and right inverse) and moreover
‖Ainv‖ ≤ ‖L.symm.toContinuousLinearMap‖ / (1 - ‖L.symm.toContinuousLinearMap‖ * ‖A - L.toContinuousLinearMap‖). -/
theorem local_inverse_bound_of_linear_equiv {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {X Y : Type*} [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace 𝕜 X]
    [NormedSpace 𝕜 Y] (L : X ≃L[𝕜] Y) :
    ∃ δ > 0,
      ∀ (A : X →L[𝕜] Y),
        ‖A - L.toContinuousLinearMap‖ < δ →
          ∃ Ainv : Y →L[𝕜] X,
            (Ainv.comp A = ContinuousLinearMap.id 𝕜 X) ∧
              (A.comp Ainv = ContinuousLinearMap.id 𝕜 Y) ∧
                ‖Ainv‖ ≤ ‖L.symm.toContinuousLinearMap‖ / (1 - ‖L.symm.toContinuousLinearMap‖ * ‖A - L.toContinuousLinearMap‖) := by sorry