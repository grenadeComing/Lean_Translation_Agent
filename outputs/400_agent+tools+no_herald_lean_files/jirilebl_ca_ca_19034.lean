import Mathlib

/-!
Inverse function theorem for holomorphic functions (one complex variable).
If U is open, f is differentiable (holomorphic) on U and f' p ≠ 0, then
there exist neighborhoods V of p and W of f(p) such that f : V → W is a
bijection and the inverse is holomorphic.
-/

theorem complex_local_inverse_holomorphic {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (hder : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ), IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ f p ∈ W ∧
    Set.MapsTo f V W ∧ Set.InjOn f V ∧ Set.SurjOn f V W ∧
    (∃ g : ℂ → ℂ, DifferentiableOn ℂ g W ∧ Set.MapsTo g W V ∧
      (∀ z ∈ V, g (f z) = z) ∧ (∀ x ∈ W, f (g x) = x)) := by sorry
