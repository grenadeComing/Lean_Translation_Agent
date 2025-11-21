import Mathlib

theorem det_of_z_map (ξ ζ : ℂ) (f : ℂ →ₗ[ℝ] ℂ)
  (h : ∀ z : ℂ, f z = ξ * z + ζ * Star.star z) :
  LinearMap.det (f : ℂ →ₗ[ℝ] ℂ) = Complex.normSq ξ - Complex.normSq ζ := by sorry
