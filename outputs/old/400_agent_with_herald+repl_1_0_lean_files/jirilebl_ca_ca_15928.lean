import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective. Show that the Fréchet derivative fderiv ℂ f z is nonzero for every z ∈ U. -/
theorem injective_holomorphic_fderiv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : DifferentiableOn ℂ f U) (hf_inj : InjOn f U) {z : ℂ} (hz : z ∈ U) :
  fderiv ℂ f z ≠ 0 := by sorry
