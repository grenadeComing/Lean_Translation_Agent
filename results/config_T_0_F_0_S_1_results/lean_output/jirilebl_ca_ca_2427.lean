import Mathlib

open Set

theorem holomorphic_on_deriv_ne_zero_locally_injective {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : HolomorphicOn f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set ℂ, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ InjectiveOn f V := by sorry