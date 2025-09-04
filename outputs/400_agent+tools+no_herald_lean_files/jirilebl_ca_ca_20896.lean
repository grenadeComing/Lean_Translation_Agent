import Mathlib

open Function Set

/-!
Local inverse theorem for holomorphic maps (specialized to ℂ).
We state a version using differentiability over ℂ and the nonvanishing derivative.
This file only gives the statement (proof `sorry`).
-/

theorem complex_local_inverse_of_hasDerivAt {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hd : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (hder : HasDerivAt f (deriv f p) p)
  (hder_ne : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ), IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧ Function.Injective (fun x => f x) ∧
    ∃ (g : ℂ → ℂ), DifferentiableOn ℂ g W ∧ (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) := by sorry
