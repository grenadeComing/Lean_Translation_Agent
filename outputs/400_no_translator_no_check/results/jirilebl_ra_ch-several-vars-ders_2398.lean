import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]

/-- If A : E →L[𝕜] F is a bijective continuous linear map between normed spaces,
    then it has a bounded (continuous) inverse. We state this as existence of
    a continuous linear map B : F →L[𝕜] E which is the two-sided inverse of A. -/
theorem bounded_inverse_of_bijective (A : E →L[𝕜] F)
  (h : Function.Bijective (A : E → F)) :
  ∃ B : F →L[𝕜] E, B.comp A = ContinuousLinearMap.id 𝕜 E ∧ A.comp B = ContinuousLinearMap.id 𝕜 F := by
  sorry
