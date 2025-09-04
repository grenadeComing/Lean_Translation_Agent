import Mathlib

/-- A continuous linear map between finite-dimensional real vector spaces
    is its own Fréchet derivative everywhere. -/
theorem continuous_linear_map_has_fderiv_at_fin {n m : Nat}
  (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  HasFDerivAt A A x := by sorry
