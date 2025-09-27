import Mathlib

/-!
Let ‖·‖ be any norm on a finite-dimensional real vector space E (e.g. ℝ^n).
The operator norm of a continuous linear map f : E →L[ℝ] F equals the maximum of ‖f x‖ on the unit sphere,
as well as the suprema over the closed and open unit balls.
This file states the result; the proof is omitted (sorry).
-/

theorem opNorm_eq_on_unit_sets {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E] [NormedAddCommGroup F] [NormedSpace ℝ F] (f : E →L[ℝ] F) :
  (ContinuousLinearMap.opNorm f = ⨆ (x : {x // ‖x‖ = 1}), ‖f x.val‖) ∧
  (ContinuousLinearMap.opNorm f = ⨆ (x : {x // ‖x‖ ≤ 1}), ‖f x.val‖) ∧
  (ContinuousLinearMap.opNorm f = ⨆ (x : {x // ‖x‖ < 1}), ‖f x.val‖) := by sorry
