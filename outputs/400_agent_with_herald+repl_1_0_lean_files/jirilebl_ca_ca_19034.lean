import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U. Then there
exist neighborhoods V of p and W of f(p) such that f : V → W is a bijection and f^{-1} is holomorphic. -/
theorem exists_local_inverse_holomorphic {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (h : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ) (g : ℂ → ℂ),
    IsOpen V ∧ IsOpen W ∧ V ⊆ U ∧ p ∈ V ∧ f p ∈ W ∧
    (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) ∧ DifferentiableOn ℂ g W := by sorry
