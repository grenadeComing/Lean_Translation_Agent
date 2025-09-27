import Mathlib

open Complex

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U.
Then there exist neighborhoods V of p and W of f(p) such that f : V → W is a bijection
and f^{-1} is holomorphic. -/
theorem exists_local_inverse_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hp : p ∈ U) (hf : IsHolomorphicOn f U) (hder : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ), IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ f p ∈ W ∧ V ⊆ U ∧
    (Function.BijOn f V) ∧
    ∃ (g : W → ℂ), (∀ y ∈ W, g y ∈ V) ∧ (∀ x ∈ V, g (f x) = x) ∧ IsHolomorphicOn g W := by sorry
