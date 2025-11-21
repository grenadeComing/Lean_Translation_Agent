import Mathlib

open Complex

theorem jirilebl_ca_ca_19034 {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : IsHolomorphicOn f U) (hp : p ∈ U)
  (hder : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ f p ∈ W ∧ V ⊆ U ∧
    Function.BijOn f V W ∧ IsHolomorphicOn g W ∧
    (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) := by sorry
