import Mathlib

/-!
Local inverse theorem for holomorphic functions (translation only).
Suppose U ⊆ ℂ is open, f : ℂ → ℂ is holomorphic on U, and f'(p) ≠ 0 for some p ∈ U.
Then there exist neighborhoods V of p and W of f(p) such that f : V → W is a bijection
and the inverse f^{-1} is holomorphic.
-/

theorem local_inverse_holomorphic {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U)
  (hder : ∃ f' : ℂ, HasDerivAt f f' p ∧ f' ≠ 0) :
  ∃ (V W : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ f p ∈ W ∧ Set.BijOn f V W ∧
    (∀ y ∈ W, g y ∈ V ∧ f (g y) = y) ∧
    (∀ x ∈ V, g (f x) = x) ∧
    DifferentiableOn ℂ g W := by sorry
