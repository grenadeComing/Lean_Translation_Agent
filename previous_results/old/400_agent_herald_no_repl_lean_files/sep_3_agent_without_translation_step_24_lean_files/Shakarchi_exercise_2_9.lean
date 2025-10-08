import Mathlib

open Set

/--
Let Ω be an open subset of ℂ and φ : ℂ → ℂ a holomorphic map with φ(Ω) ⊆ Ω.
If there exists z₀ ∈ Ω with φ z₀ = z₀ and deriv φ z₀ = 1, then φ is affine linear on Ω.

(We state differentiability using `DifferentiableOn` and `deriv` for the complex derivative.)
-/
theorem Shakarchi_exercise_2_9 {Ω : Set ℂ} (hΩ : IsOpen Ω) (φ : ℂ → ℂ)
  (hmap : ∀ z, z ∈ Ω → φ z ∈ Ω) (hφ : DifferentiableOn ℂ φ Ω)
  (z0 : ℂ) (hz0 : z0 ∈ Ω) (hfix : φ z0 = z0) (hder : deriv φ z0 = 1) :
  ∃ (a b : ℂ), ∀ z, z ∈ Ω → φ z = a * z + b := by sorry
