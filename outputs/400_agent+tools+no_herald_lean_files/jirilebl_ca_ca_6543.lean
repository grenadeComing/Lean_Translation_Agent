import Mathlib

open Metric Set

theorem holomorphic_local_injective {U : Set ℂ} {f : ℂ → ℂ} {p : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hp : p ∈ U) (hfp : (deriv f p) ≠ 0) :
  ∃ δ : ℝ, δ > 0 ∧ (∀ z w, z ∈ Metric.ball p δ → w ∈ Metric.ball p δ → f z = f w → z = w) ∧ Metric.ball p δ ⊆ U := by sorry
