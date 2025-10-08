import Mathlib

open Set

/-!
Translate: Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U.
Then there exists an open neighborhood V of p such that f(V) is open and f|_V is injective.

We express holomorphic by DifferentiableOn ℂ f U and use fderiv to state the derivative
is nonzero. We do not give a proof (use `by sorry`).
-/

theorem exists_open_neighborhood_on_which_injective_and_open_image
  {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  {p : ℂ} (hp : p ∈ U) (h : fderiv ℂ f p ≠ 0) :
  ∃ V : Set ℂ, p ∈ V ∧ IsOpen V ∧ V ⊆ U ∧ IsOpen (f '' V) ∧ Set.InjOn f V := by
  sorry
