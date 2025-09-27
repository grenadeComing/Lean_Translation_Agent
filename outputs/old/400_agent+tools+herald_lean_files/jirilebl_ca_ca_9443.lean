import Mathlib

open Set

/-- If U ⊆ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ)
  (hd : DifferentiableOn ℂ f U) (hi : Function.Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
