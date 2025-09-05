import Mathlib

open Set

lemma holomorphic_nonzero_deriv_locally_injective
  {U : Set ℂ} (hU : IsOpen U) (f : ℂ → ℂ)
  (hd : DifferentiableOn ℂ f U) (hder : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ ε > 0, ∀ x y, x ∈ ball z ε ∩ U → y ∈ ball z ε ∩ U → f x = f y → x = y := by sorry
