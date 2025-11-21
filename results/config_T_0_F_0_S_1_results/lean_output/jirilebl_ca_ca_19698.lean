import Mathlib

open Set

theorem holomorphic_eq_of_eq_on_set_with_accumulation_point
  {U S : Set ℂ} {f g : ℂ → ℂ}
  (hU : IsOpen U)
  (hSsubset : S ⊆ U)
  (hf : DifferentiableOn ℂ f U)
  (hg : DifferentiableOn ℂ g U)
  (hacc : ∃ z0, z0 ∈ U ∧ z0 ∈ closure (S \ {z0}))
  (hfg : ∀ z ∈ S, f z = g z) :
  ∀ z ∈ U, f z = g z := by sorry