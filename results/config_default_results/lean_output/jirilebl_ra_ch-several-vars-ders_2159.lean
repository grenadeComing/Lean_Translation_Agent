import Mathlib

/-- Let E be a normed real vector space. For fixed a : E, define the continuous linear map
    A : ℝ →L[ℝ] E by A x = x • a. Then the operator norm of A equals the norm of a: opNorm A = ‖a‖. -/
theorem continuous_linear_map_opNorm_smul_right {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] (a : E) :
  ContinuousLinearMap.opNorm (ContinuousLinearMap.mk (LinearMap.smulRight (LinearMap.id : ℝ →ₗ[ℝ] ℝ) a) : ℝ →L[ℝ] E) = ‖a‖ := by sorry
