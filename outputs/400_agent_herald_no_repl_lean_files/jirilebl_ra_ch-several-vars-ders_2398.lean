import Mathlib

open ContinuousLinearMap

variables {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variables {E : Type*} {F : Type*}
  [NormedAddCommGroup E] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]
  [CompleteSpace E] [CompleteSpace F]

/-- If A : E →L[𝕜] F is a bijective continuous linear map between Banach spaces,
    then its inverse is a bounded (continuous) linear map. -/
theorem bounded_inverse_of_bijective (A : E →L[𝕜] F)
  (h : Function.Bijective (A : E → F)) :
  ∃ (Ainv : F →L[𝕜] E), Ainv.comp A = ContinuousLinearMap.id 𝕜 E ∧ A.comp Ainv = ContinuousLinearMap.id 𝕜 F := by sorry
