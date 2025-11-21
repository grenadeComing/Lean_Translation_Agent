import Mathlib

/-- If U ⊂ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem deriv_ne_zero_of_inj_on {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : IsHolomorphicOn f U)
  (hf_inj : InjOn f U) : ∀ z ∈ U, deriv f z ≠ 0 := by sorry