import Mathlib

/-- Suppose U ⊂ ℂ is open, p ∈ U, and f : U → ℂ is holomorphic, and f'(p) ≠ 0.
Then there is an open neighborhood V of p such that f restricted to V is injective. -/
theorem exists_open_neighborhood_of_local_injective_of_deriv_ne_zero
  {U : Set ℂ} {p : ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hp : p ∈ U)
  (hf : DifferentiableOn ℂ f U) (hfp : deriv f p ≠ 0) :
  ∃ V : Set ℂ, IsOpen V ∧ p ∈ V ∧ Set.InjOn f V := by sorry
