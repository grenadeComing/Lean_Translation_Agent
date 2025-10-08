import Mathlib

open Complex Metric Set

theorem maximum_modulus_local_const {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hd : DifferentiableOn ℂ f U)
  {z0 : ℂ} (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, Metric.ball z0 r ⊆ U ∧ ∀ z ∈ Metric.ball z0 r, norm (f z) ≤ norm (f z0)) :
  ∃ r > 0, Metric.ball z0 r ⊆ U ∧ ∀ z ∈ Metric.ball z0 r, f z = f z0 := by sorry
