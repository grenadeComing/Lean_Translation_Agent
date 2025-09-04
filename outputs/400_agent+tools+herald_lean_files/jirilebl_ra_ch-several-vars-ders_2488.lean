import Mathlib

/-- If A : ℝ^n → ℝ^m is a linear map, then A has a (Fréchet) derivative at every point and that
    derivative equals A itself (as a continuous linear map). -/

theorem linear_map.has_fderiv_at_real {n m : ℕ} (A : (Fin n → ℝ) →ₗ[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  HasFderivAt (⇑A : (Fin n → ℝ) → (Fin m → ℝ)) (A.toContinuousLinearMap : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) x :=
by sorry

theorem linear_map.fderiv_eq_self {n m : ℕ} (A : (Fin n → ℝ) →ₗ[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  fderiv ℝ (⇑A : (Fin n → ℝ) → (Fin m → ℝ)) x = (A.toContinuousLinearMap : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :=
by sorry
