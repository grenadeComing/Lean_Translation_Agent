import Mathlib

open Set

/-- Local inverse for non-vanishing derivative of a holomorphic function on ℂ. -/
theorem holomorphic_local_inverse {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  (p : ℂ) (hp : p ∈ U) (hJ : (fderiv ℂ f p) ≠ 0) :
  ∃ (V W : Set ℂ) (g : ℂ → ℂ), IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ (f '' V = W) ∧
    Set.InjOn f V ∧ DifferentiableOn ℂ g W ∧ (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) := by sorry
