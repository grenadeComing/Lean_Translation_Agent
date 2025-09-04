import Mathlib

open Set
open Metric

/-- Suppose U ⊂ ℂ is open, f : ℂ → ℂ is holomorphic on U (DifferentiableOn ℂ f U),
and f'(z) ≠ 0 for every z ∈ U. Then f is locally injective on U: for each z ∈ U
there exists r > 0 such that f is injective on U ∩ ball z r. -/
theorem holomorphic_nonzero_deriv_locally_injective {U : Set ℂ} (hU : IsOpen U)
  {f : ℂ → ℂ} (hd : DifferentiableOn ℂ f U) (hder : ∀ z ∈ U, deriv f z ≠ 0) :
  ∀ z ∈ U, ∃ r > 0, Set.InjOn f (U ∩ ball z r) := by sorry
