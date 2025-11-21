import Mathlib

open Set Function

/--
If f is holomorphic on an open set U and its complex derivative never vanishes on U,
then f is locally injective on U: for every z in U there is an open neighbourhood V ⊆ U
on which f is injective.
-/
theorem holomorphic_on_deriv_ne_zero_locally_injective_on {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ V, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ InjectiveOn f V := by sorry