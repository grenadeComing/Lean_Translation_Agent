import Mathlib

/-!
A perturbation result for invertible bounded linear operators using the Neumann series.
We state: if L : X →L[𝕜] X has a bounded inverse Linv, then there exists δ > 0 such that
for any A with ‖A - L‖ < δ there is an inverse Ainv of A and the bound
‖Ainv‖ ≤ ‖Linv‖ / (1 - ‖Linv‖ * ‖A - L‖) holds.

This file only contains the statement (no proof): the proof is obtained by applying the
Neumann series to the perturbation L^{-1}(L - A).
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {X : Type*} [NormedAddCommGroup X] [NormedSpace 𝕜 X]

open ContinuousLinearMap

theorem invertible_perturbation_neumann
  (L : X →L[𝕜] X) (Linv : X →L[𝕜] X)
  (hL_left : L.comp Linv = ContinuousLinearMap.id)
  (hL_right : Linv.comp L = ContinuousLinearMap.id) :
  ∃ (δ : ℝ), 0 < δ ∧
    ∀ (A : X →L[𝕜] X), ‖A - L‖ < δ →
      ∃ (Ainv : X →L[𝕜] X), A.comp Ainv = ContinuousLinearMap.id ∧ Ainv.comp A = ContinuousLinearMap.id
        ∧ ‖Ainv‖ ≤ ‖Linv‖ / (1 - ‖Linv‖ * ‖A - L‖) := by sorry
