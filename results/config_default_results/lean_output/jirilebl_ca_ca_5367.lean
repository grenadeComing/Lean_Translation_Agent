import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open, p ∈ U, and f : U → ℂ is holomorphic, and f'(p) ≠ 0.
    Then there is an open neighborhood V of p such that f restricted to V is injective. -/
theorem exists_open_neighborhood_on_inj_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {p : ℂ} (hp : p ∈ U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) (hfp : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧ InjOn f V := by sorry
