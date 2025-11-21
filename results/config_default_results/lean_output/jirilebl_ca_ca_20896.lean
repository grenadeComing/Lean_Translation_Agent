import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U. 
Then there exist open sets V, W ⊂ ℂ with p ∈ V ⊂ U, f(V) = W, and f|_V injective with holomorphic inverse. -/
theorem exists_local_inverse_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (p : ℂ) (hp : p ∈ U) (hfp : fderiv ℂ f p ≠ 0) :
  ∃ V W : Set ℂ,
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) ∧
    ∃ g : ℂ → ℂ, DifferentiableOn ℂ g W ∧ (∀ x, x ∈ V → g (f x) = x) ∧ (∀ y, y ∈ W → f (g y) = y) := by sorry
