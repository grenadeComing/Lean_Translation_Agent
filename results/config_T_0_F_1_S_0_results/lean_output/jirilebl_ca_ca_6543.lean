import Mathlib

open Metric

theorem local_injective_of_nonzero_derivative (U : Set ℂ) (f : ℂ → ℂ) (p : ℂ) :
  IsOpen U → DifferentiableOn ℂ f U → p ∈ U → deriv f p ≠ 0 →
  ∃ δ : ℝ, 0 < δ ∧ ∀ z w : ℂ, z ∈ Metric.ball p δ → w ∈ Metric.ball p δ → f z = f w → z = w := by sorry
