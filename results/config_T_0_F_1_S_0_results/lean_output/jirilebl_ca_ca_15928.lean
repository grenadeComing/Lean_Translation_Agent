import Mathlib

open Set

theorem inj_holomorphic_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U)
  (hf : ∀ z ∈ U, DifferentiableAt ℂ f z) (hfi : InjOn f U) :
  ∀ z ∈ U, deriv f z ≠ 0 := by sorry
