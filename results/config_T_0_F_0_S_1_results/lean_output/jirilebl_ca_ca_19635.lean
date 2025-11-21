import Mathlib

open Set

theorem holomorphic_derivative_zero_set_is_discrete {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (hne : ¬ IsConstantOn f U) : Discrete ({ z : ℂ | z ∈ U ∧ deriv f z = 0 }) := by sorry
