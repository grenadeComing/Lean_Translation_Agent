import Mathlib

/-- Maximum modulus principle (local version).
If U ⊂ ℂ is open and f : U → ℂ is differentiable on U, and |f| attains a local maximum at z0 ∈ U,
then f is constant in a neighborhood of z0. -/
theorem maximum_modulus_local {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r : ℝ, r > 0 ∧ ∀ z, z ∈ U ∧ dist z z0 < r → norm (f z) ≤ norm (f z0)) :
  ∃ r : ℝ, r > 0 ∧ ∀ z, z ∈ U ∧ dist z z0 < r → f z = f z0 := by sorry
