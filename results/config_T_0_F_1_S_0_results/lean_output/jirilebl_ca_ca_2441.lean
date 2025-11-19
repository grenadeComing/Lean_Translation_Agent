import Mathlib

open Set

theorem jirilebl_ca_ca_2441 {U : Set Complex} {f : Complex → Complex}
  (hU : IsOpen U)
  (hd : DifferentiableOn ℂ f U)
  (hnz : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set Complex, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ Set.InjOn f V := by sorry
