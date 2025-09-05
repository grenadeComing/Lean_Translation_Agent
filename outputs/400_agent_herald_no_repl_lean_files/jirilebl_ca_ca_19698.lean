import Mathlib

/-!
Identity theorem for holomorphic functions on an open set:
If U ⊆ ℂ is open, f,g : ℂ → ℂ are holomorphic on U, S ⊆ U has an accumulation point in U,
and f = g on S, then f = g on U.
-/

theorem holomorphic_eq_of_eq_on_set_with_accumulation_point {U : Set ℂ}
  (hU : IsOpen U) {f g : ℂ → ℂ} (hf : IsHolomorphicOn f U) (hg : IsHolomorphicOn g U)
  {S : Set ℂ} (hS : S ⊆ U) (hacc : ∃ z0, z0 ∈ U ∧ IsAccumulationPoint z0 S)
  (hfg : ∀ z ∈ S, f z = g z) : ∀ z ∈ U, f z = g z := by sorry
