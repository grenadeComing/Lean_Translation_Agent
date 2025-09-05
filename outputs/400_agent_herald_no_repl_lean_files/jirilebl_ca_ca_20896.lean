import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U.
Then there exist open sets V, W ⊂ ℂ with p ∈ V ⊂ U, f(V) = W, and f|_V injective with holomorphic inverse. -/
theorem complex.exists_local_inverse_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (h : deriv f p ≠ 0) :
  ∃ V W : Set ℂ, IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧ Set.InjOn f V ∧
    ∃ g : W → ℂ, ContinuousOn g W ∧ (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) ∧
      DifferentiableOn ℂ g W := by sorry
