import Mathlib

open Set Function

/-- If U ⊆ ℂ is open and f : ℂ → ℂ is holomorphic on U and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_derivative_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (h_inj : Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
