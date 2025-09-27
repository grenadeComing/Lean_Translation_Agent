import Mathlib

open Function

/-- If U ⊆ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_has_nonzero_derivative {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) (hfi : Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by
  sorry
