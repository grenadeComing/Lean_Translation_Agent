import Mathlib

open Set

theorem jirilebl_ca_ca_19034
  {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ} :
  IsOpen U → DifferentiableOn ℂ f U → p ∈ U →
  (∃ f' : ℂ, HasDerivAt f f' p ∧ f' ≠ 0) →
  ∃ (V W : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ f p ∈ W ∧
    Set.BijOn f V W ∧
    (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) ∧
    DifferentiableOn ℂ g W := by sorry