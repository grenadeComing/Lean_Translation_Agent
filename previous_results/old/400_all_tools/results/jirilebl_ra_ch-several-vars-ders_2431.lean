import Mathlib

/-!
Let `‖·‖` be any norm on `ℝ^n`. Show that the induced operator norm on `L(ℝ^n,ℝ^m)`
satisfies

  ‖A‖ = max { ‖Ax‖ : ‖x‖ = 1 } = sup { ‖Ax‖ : ‖x‖ ≤ 1 } = sup { ‖Ax‖ : ‖x‖ < 1 }.

We state a general finite-dimensional version: for a continuous linear map `f` from a
finite-dimensional normed real vector space `E` to a normed real vector space `F`, the
operator norm `ContinuousLinearMap.opNorm f` is attained on the unit sphere and equals the
suprema over the closed and open unit balls.
-/

theorem opNorm_eq_max_on_unit_sphere {E F : Type*}
  [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F]
  (f : E →L[ℝ] F) :
  ContinuousLinearMap.opNorm f = ⨆ (x : E) (hx : ‖x‖ = 1), ‖f x‖
  ∧ ContinuousLinearMap.opNorm f = ⨆ (x : E) (hx : ‖x‖ ≤ 1), ‖f x‖
  ∧ ContinuousLinearMap.opNorm f = ⨆ (x : E) (hx : ‖x‖ < 1), ‖f x‖ := by
  sorry
