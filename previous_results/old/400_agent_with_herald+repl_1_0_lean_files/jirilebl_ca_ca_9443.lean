import Mathlib

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic on U and injective on U, then f'(z) ≠ 0 for every z ∈ U. -/
theorem complex_deriv_ne_zero_of_holomorphic_injective {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : IsHolomorphicOn f U) (h_inj : InjOn f U) : ∀ z ∈ U, deriv f z ≠ 0 := by sorry
