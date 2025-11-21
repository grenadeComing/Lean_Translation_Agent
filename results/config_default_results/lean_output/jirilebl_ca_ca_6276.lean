import Mathlib

/-
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(p) ≠ 0 for some p ∈ U.
Then there exists an open neighborhood V of p such that f(V) is open and f|_V is injective.
-/

theorem holomorphic_nonzero_derivative_locally_injective {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U) {p : ℂ} (hp : p ∈ U) (h : deriv f p ≠ 0) :
  ∃ V : Set ℂ, p ∈ V ∧ IsOpen V ∧ V ⊆ U ∧ IsOpen (f '' V) ∧ Set.InjOn f V := by sorry
