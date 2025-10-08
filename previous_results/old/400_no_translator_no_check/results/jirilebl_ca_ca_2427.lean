import Mathlib

open Function Set

theorem holomorphic_nonzero_deriv_locally_injective {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (h' : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set ℂ, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by
  sorry
