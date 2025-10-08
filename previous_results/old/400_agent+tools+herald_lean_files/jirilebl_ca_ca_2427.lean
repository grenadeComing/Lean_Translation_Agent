import Mathlib

open Set

lemma holomorphic_locally_injective (U : Set Complex) (f : Complex → Complex)
  (hU : IsOpen U) (hd : DifferentiableOn ℂ f U) (h' : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set Complex, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) := by sorry
