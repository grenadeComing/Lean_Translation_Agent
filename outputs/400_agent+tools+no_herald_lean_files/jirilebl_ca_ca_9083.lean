import Mathlib

open Function Set

theorem injective_holomorphic_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ)
  (hf : DifferentiableOn ℂ f U) (hfi : Injective f) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
