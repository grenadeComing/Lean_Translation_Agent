import Mathlib

open Set

theorem identity_theorem {U S : Set ℂ} (hU : IsOpen U) (hS : S ⊆ U)
  {f g : ℂ → ℂ} (hf : AnalyticOn ℂ f U) (hg : AnalyticOn ℂ g U)
  (hacc : ∃ z0, z0 ∈ U ∧ z0 ∈ closure (S \ {z0})) (h : ∀ z ∈ S, f z = g z) :
  ∀ z ∈ U, f z = g z := by sorry
