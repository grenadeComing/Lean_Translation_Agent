import Mathlib

/-- Let 𝕜 be a normed field, X and Y normed vector spaces over 𝕜, and A : X →L[𝕜] Y a continuous linear map.
If A is bijective then its inverse A^{-1} : Y → X is bounded (i.e., continuous / a continuous linear map).
This is expressed by the fact that a continuous linear equivalence has a continuous inverse. -/

theorem continuous_symm_of_equiv_ext {𝕜 : Type*} [NormedField 𝕜] {X Y : Type*}
    [NormedAddCommGroup X] [NormedSpace 𝕜 X] [NormedAddCommGroup Y] [NormedSpace 𝕜 Y]
    (A : X ≃L[𝕜] Y) :
  Continuous A.symm := by sorry
