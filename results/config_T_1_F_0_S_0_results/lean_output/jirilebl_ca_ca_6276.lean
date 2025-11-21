import Mathlib

/-- Suppose U ⊆ ℂ is open, f : U → ℂ is holomorphic (differentiable on U), and f'(p) ≠ 0 for some p ∈ U. 
Then there exists an open neighborhood V of p such that f(V) is open and f|_V is injective. -/
theorem exists_open_neighborhood_on_which_holomorphic_map_is_injective_and_image_is_open {f : ℂ → ℂ} {U : Set ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (hfp : deriv f p ≠ 0) :
  ∃ V : Set ℂ, p ∈ V ∧ IsOpen V ∧ InjOn f V ∧ IsOpen (f '' V) := by sorry
