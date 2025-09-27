import Mathlib

/-- If a real-linear endomorphism of ℂ is given by z ↦ ξ * z + ζ * conj z, its determinant is |ξ|^2 - |ζ|^2.
    We express conj z as z.re - z.im * I to avoid depending on the name of `conj` in the environment. -/
theorem det_of_real_linear_map_repr (ξ ζ : ℂ) (M : ℂ →ₗ[ℝ] ℂ)
  (hM : ∀ z : ℂ, M z = ξ * z + ζ * (z.re - z.im * Complex.I)) :
  LinearMap.det (M : ℂ →ₗ[ℝ] ℂ) = (Complex.abs ξ) ^ 2 - (Complex.abs ζ) ^ 2 := by sorry
