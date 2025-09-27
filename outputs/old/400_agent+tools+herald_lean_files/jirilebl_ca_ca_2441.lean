import Mathlib
open Set Filter Topology
open scoped Topology

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U. -/
theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
    (hf' : ∀ z ∈ U, deriv f z ≠ 0) : ∀ z ∈ U, ∃ V, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ Set.InjOn f V := by sorry
