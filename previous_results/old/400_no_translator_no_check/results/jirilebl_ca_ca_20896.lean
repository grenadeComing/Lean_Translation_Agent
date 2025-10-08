import Mathlib

open Complex

/-!
Local inverse theorem for holomorphic functions in ℂ.
We state: If U ⊆ ℂ is open, f : ℂ → ℂ is holomorphic on U and f'(p) ≠ 0,
then there exist open V,W with p ∈ V ⊆ U, f(V) = W, and f|_V is a biholomorphism.

The proof is omitted (by sorry).
-/

theorem complex_local_inverse_of_deriv_ne_zero {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hp : p ∈ U)
  (hf : DifferentiableOn ℂ f U) (hder : fderiv ℂ f p ≠ 0) :
  ∃ (V W : Set ℂ), IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) ∧
    ∃ g : ℂ → ℂ, DifferentiableOn ℂ g W ∧ (∀ x, x ∈ V → g (f x) = x) ∧ (∀ y, y ∈ W → f (g y) = y) := by sorry
