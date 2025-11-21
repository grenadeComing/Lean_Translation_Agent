import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U. Then there exist neighborhoods V of p and W of f(p) such that f : V → W is a bijection and f^{-1} is holomorphic. -/
theorem exists_local_inverse_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (h : deriv f p ≠ 0) :
  ∃ V W : Set ℂ, IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ f p ∈ W ∧ Set.BijOn f V W ∧ DifferentiableOn ℂ (Function.invFunOn f V) W := by sorry
