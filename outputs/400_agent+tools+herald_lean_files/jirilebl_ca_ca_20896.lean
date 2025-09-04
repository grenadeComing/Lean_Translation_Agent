import Mathlib

open Set

theorem local_holomorphic_inverse (U : Set Complex) (f : Complex → Complex) (p : Complex)
  (hU : IsOpen U) (hf : DifferentiableOn Complex f U) (hp : p ∈ U) (hfp : deriv f p ≠ 0) :
  ∃ (V W : Set Complex) (g : Complex → Complex),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x1 x2, x1 ∈ V → x2 ∈ V → f x1 = f x2 → x1 = x2) ∧
    (∀ y, y ∈ W → f (g y) = y) ∧ (∀ x, x ∈ V → g (f x) = x) ∧
    DifferentiableOn Complex g W := by sorry
