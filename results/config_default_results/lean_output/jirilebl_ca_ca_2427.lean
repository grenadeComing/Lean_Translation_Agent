import Mathlib
open scoped Complex

/-- A predicate expressing that f is locally injective on a set U: for every x ∈ U, there is an open neighborhood V of x with V ⊆ U on which f is injective. -/
 def LocallyInjectiveOn (f : ℂ → ℂ) (U : Set ℂ) : Prop :=
  ∀ x ∈ U, ∃ V, IsOpen V ∧ x ∈ V ∧ V ⊆ U ∧ Set.InjOn f V

/-- Suppose U ⊆ ℂ is open, f: U → ℂ is holomorphic on U, and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U. -/
theorem isLocallyInjective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
    (hf : DifferentiableOn ℂ f U) (h : ∀ z ∈ U, deriv f z ≠ 0) : LocallyInjectiveOn f U := by
  sorry
