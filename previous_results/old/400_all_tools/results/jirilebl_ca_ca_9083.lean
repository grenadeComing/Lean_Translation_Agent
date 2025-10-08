import Mathlib
open Complex

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem derivative_ne_zero_of_injective {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (h_inj : Function.Injective f) : ∀ z ∈ U, deriv f z ≠ 0   := by sorry
