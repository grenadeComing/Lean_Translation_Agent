import Mathlib

open Set Metric

/-- Suppose U ⊂ ℂ is open, f : U → ℂ is holomorphic, and f'(z) ≠ 0 for every z ∈ U. Show that f is locally injective on U. -/
theorem local_injective_of_deriv_ne_zero {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : DifferentiableOn ℂ f U) (h : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ r > 0, InjOn f (U ∩ ball z r) := by sorry
