import Mathlib

open Set

theorem jirilebl_ca_ca_2427 {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (hder : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set ℂ, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry