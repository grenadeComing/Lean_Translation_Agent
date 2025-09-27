import Mathlib
open TopologicalSpace Metric Set Filter Asymptotics Function MeasureTheory AffineMap Bornology
open scoped Topology Filter NNReal Real

/-- Suppose U ⊂ ℂ is open, f : ℂ → ℂ is holomorphic on U (i.e. differentiable on U over ℂ), and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U: for each z ∈ U there exists an open neighborhood V of z with V ⊆ U such that f is injective on V. -/
theorem locally_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
    (hd : DifferentiableOn ℂ f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
    ∀ z ∈ U, ∃ V, IsOpen V ∧ z ∈ V ∧ V ⊆ U ∧ InjOn f V := by sorry
