import Mathlib

open Set

theorem complex_inverse_function_theorem {U : Set Complex} {f : Complex → Complex} {p : Complex}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (hfp : fderiv ℂ f p ≠ 0) :
  ∃ (V W : Set Complex) (g : Complex → Complex),
    p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) ∧
    (∀ w, w ∈ W → f (g w) = w) ∧ (∀ x, x ∈ V → g (f x) = x) ∧
    DifferentiableOn ℂ g W := by sorry
