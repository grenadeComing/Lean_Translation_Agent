import Mathlib

open Set Function

theorem holomorphic_nonzero_deriv_locally_injective {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : True) (hder : ∀ z ∈ U, True) :
  ∀ z0 ∈ U, ∃ V : Set ℂ, IsOpen V ∧ z0 ∈ V ∧ V ⊆ U ∧ Injective f := by sorry
