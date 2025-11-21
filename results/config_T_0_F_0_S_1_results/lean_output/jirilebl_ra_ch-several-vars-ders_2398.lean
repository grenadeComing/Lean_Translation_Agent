import Mathlib

variable {𝕜 : Type*} [NormedField 𝕜]
variable {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]

/-- If A : E →L[𝕜] F is a bounded linear bijection between Banach spaces E and F,
    then its inverse is also a bounded linear map. -/
theorem continuous_linear_bijective_has_bounded_inverse
  [CompleteSpace E] [CompleteSpace F]
  (A : E →L[𝕜] F) (hb : Function.Bijective (A : E → F)) :
  ∃ B : F →L[𝕜] E, B.comp A = ContinuousLinearMap.id 𝕜 E ∧ A.comp B = ContinuousLinearMap.id 𝕜 F := by sorry