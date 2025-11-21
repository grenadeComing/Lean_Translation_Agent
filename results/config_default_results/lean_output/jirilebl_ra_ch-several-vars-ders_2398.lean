import Mathlib

variables {𝕜 : Type _} [NontriviallyNormedField 𝕜]
variables {X Y : Type _} [NormedAddCommGroup X] [NormedAddCommGroup Y]
variables [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]

/-- If A : X →L[𝕜] Y is a bijective continuous linear map between normed spaces, then
    there exists a bounded linear inverse Ainv : Y →L[𝕜] X with Ainv ∘ A = id and A ∘ Ainv = id. -/
theorem exists_bounded_inverse_of_bijective (A : X →L[𝕜] Y) (h : Function.Bijective (A : X → Y)) :
  ∃ Ainv : Y →L[𝕜] X, Ainv.comp A = ContinuousLinearMap.id 𝕜 X ∧ A.comp Ainv = ContinuousLinearMap.id 𝕜 Y := by sorry
