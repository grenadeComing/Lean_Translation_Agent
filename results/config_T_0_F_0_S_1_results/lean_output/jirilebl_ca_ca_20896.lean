import Mathlib

open Set

theorem holomorphic_local_inverse {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hpU : p ∈ U) (hf : IsHolomorphicOn f U) (hder : deriv f p ≠ 0) :
  ∃ (V W : Set ℂ) (g : W → ℂ),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    InjOn f V ∧ IsHolomorphicOn g W ∧ (∀ z ∈ V, g (f z) = z) ∧ (∀ w ∈ W, f (g w) = w) := by sorry