import Mathlib

open Set

/-- If U ⊆ ℂ is open and f : U → ℂ is holomorphic and injective, then f'(z) ≠ 0 for every z ∈ U. -/
theorem injective_holomorphic_on_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : IsHolomorphicOn f U) (hi : Injective f) (z : ℂ) (hz : z ∈ U) :
  deriv f z ≠ 0 := by sorry