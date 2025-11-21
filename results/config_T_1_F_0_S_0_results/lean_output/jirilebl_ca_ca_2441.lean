import Mathlib

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U.
    Then f is locally injective on U: for every z ∈ U there exists an open neighborhood
    V with z ∈ V ⊆ U such that f is injective on V. -/
theorem locally_injective_of_isHolomorphicOn_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (hder : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set ℂ, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ Set.InjOn f V := by sorry