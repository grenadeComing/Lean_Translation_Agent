import Mathlib

open Function

theorem injective_holomorphic_on_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : holomorphic_on f U) (h_inj : InjectiveOn f U) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry