import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U.
Then there exist open sets V, W ⊂ ℂ with p ∈ V ⊂ U, f(V) = W, and f|_V injective with holomorphic inverse. -/
theorem holomorphic_local_inverse {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (hder : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) ∧
    ∃ g : ℂ → ℂ, DifferentiableOn ℂ g W ∧ (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) := by sorry