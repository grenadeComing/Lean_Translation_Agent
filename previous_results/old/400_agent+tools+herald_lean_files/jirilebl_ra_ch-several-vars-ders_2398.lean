import Mathlib

/-!
Let 𝕜 be a normed field and X,Y be normed 𝕜-vector spaces which are complete.
Let A : X →L[𝕜] Y be a continuous linear map. If A is bijective, then its
inverse is a bounded (continuous) linear map, i.e. there exists B : Y →L[𝕜] X
which is the inverse of A.
-/

theorem bounded_inverse_of_bijective {𝕜 : Type*} [NormedField 𝕜]
  {X Y : Type*} [NormedAddCommGroup X] [NormedSpace 𝕜 X] [CompleteSpace X]
  [NormedAddCommGroup Y] [NormedSpace 𝕜 Y] [CompleteSpace Y]
  (A : X →L[𝕜] Y) (h : Function.Bijective (A.toLinearMap : X → Y)) :
  ∃ B : Y →L[𝕜] X,
    (B.toLinearMap.comp A.toLinearMap = (LinearMap.id : X →ₗ[𝕜] X)) ∧
    (A.toLinearMap.comp B.toLinearMap = (LinearMap.id : Y →ₗ[𝕜] Y)) := by sorry
