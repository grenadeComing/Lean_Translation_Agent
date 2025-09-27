import Mathlib

variable {𝕜 : Type*} [NormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

theorem opNorm_add_le (A B : E →L[𝕜] F) :
  ContinuousLinearMap.opNorm (A + B) ≤ ContinuousLinearMap.opNorm A + ContinuousLinearMap.opNorm B :=
by sorry

theorem opNorm_smul (a : 𝕜) (A : E →L[𝕜] F) :
  ContinuousLinearMap.opNorm (a • A) = ‖a‖ * ContinuousLinearMap.opNorm A :=
by sorry

theorem opNorm_nonneg (A : E →L[𝕜] F) :
  0 ≤ ContinuousLinearMap.opNorm A :=
by sorry

theorem opNorm_eq_zero_iff (A : E →L[𝕜] F) :
  ContinuousLinearMap.opNorm A = 0 ↔ A = 0 :=
by sorry
