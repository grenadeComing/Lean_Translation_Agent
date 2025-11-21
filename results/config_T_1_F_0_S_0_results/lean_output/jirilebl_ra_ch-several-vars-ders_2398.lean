import Mathlib

/-- If A : X →L[𝕜] Y is a bijective continuous linear map between normed spaces over 𝕜,
then its inverse is also a continuous linear map (i.e., bounded). -/
theorem continuous_linear_map_bijective_has_continuous_inverse
  {𝕜 : Type*} [NormedField 𝕜]
  {X Y : Type*} [NormedAddCommGroup X] [NormedSpace 𝕜 X]
                [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
  (A : X →L[𝕜] Y) (h : Function.Bijective (A : X → Y)) :
  ∃ B : Y →L[𝕜] X, B.comp A = ContinuousLinearMap.id 𝕜 X ∧ A.comp B = ContinuousLinearMap.id 𝕜 Y := by sorry