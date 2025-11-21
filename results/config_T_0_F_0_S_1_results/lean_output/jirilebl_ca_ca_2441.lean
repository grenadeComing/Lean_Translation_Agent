import Mathlib

/-!
Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U.
Then f is locally injective on U.
-/

theorem holomorphic_on_deriv_ne_zero_locally_injective {U : Set ℂ} {f : ℂ → ℂ}
  (hU : IsOpen U) (hf : IsHolomorphicOn f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V : Set ℂ, IsOpen V ∧ V ⊆ U ∧ z ∈ V ∧ InjectiveOn f V := by sorry
