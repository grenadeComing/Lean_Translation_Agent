import Mathlib

open Set

/-- Complex inverse function theorem (local). -/
theorem complex_local_inverse {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (h' : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ) (g : ℂ → ℂ),
    p ∈ V ∧ f p ∈ W ∧ IsOpen V ∧ IsOpen W ∧
    Set.BijOn f V W ∧
    (∀ x, x ∈ V → g (f x) = x) ∧
    (∀ y, y ∈ W → f (g y) = y) ∧
    DifferentiableOn ℂ g W := by
  sorry
