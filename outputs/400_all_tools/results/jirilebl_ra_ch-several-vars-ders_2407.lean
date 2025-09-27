import Mathlib

/-!
Perturbation of invertible bounded linear operators: if L : X ≃L[𝕜] Y is a continuous linear
equivalence between normed spaces and A is a continuous linear map sufficiently close to L,
then A is also a continuous linear equivalence and we have the usual Neumann-series bound on
the norm of the inverse.
-/

theorem invertible_perturbation {𝕜 : Type*} [NontriviallyNormedField 𝕜] {X Y : Type*}
  [NormedAddCommGroup X] [NormedSpace 𝕜 X] [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
  (L : X ≃L[𝕜] Y) :
  ∃ δ > 0, ∀ (A : X →L[𝕜] Y), ‖A - L.toContinuousLinearMap‖ < δ →
    (∃ (E : X ≃L[𝕜] Y), E.toContinuousLinearMap = A ∧
      ‖E.symm.toContinuousLinearMap‖ ≤ ‖L.symm.toContinuousLinearMap‖ /
        (1 - ‖L.symm.toContinuousLinearMap‖ * ‖A - L.toContinuousLinearMap‖)) := by sorry
