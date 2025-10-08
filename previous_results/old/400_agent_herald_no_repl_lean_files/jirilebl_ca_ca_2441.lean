import Mathlib

open Set

theorem holomorphic_deriv_ne_zero_locally_injective_on {U : Set ℂ} (f : ℂ → ℂ)
  (hU : IsOpen U) (hd : DifferentiableOn ℂ f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
  LocallyInjectiveOn f U := by sorry
