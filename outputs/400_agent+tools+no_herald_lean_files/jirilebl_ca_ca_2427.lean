import Mathlib

open Set

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic (differentiable on U), and f'(z) ≠ 0 for every z ∈ U.
    Then f is locally injective on U. -/
theorem differentiable_on.deriv_ne_zero_locally_injective {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hd : DifferentiableOn ℂ f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V, IsOpen V ∧ V ⊆ U ∧ z ∈ V ∧ InjOn f V := by sorry
