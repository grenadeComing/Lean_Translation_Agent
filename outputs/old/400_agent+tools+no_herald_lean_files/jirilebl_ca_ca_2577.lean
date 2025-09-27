import Mathlib

open Metric Set

/-- Maximum modulus principle (local version): if f is holomorphic on an open set U
    and |f| attains a local maximum at z0, then f is constant in a neighborhood of z0. -/
theorem maximum_modulus_local {U : Set ℂ} {f : ℂ → ℂ} {z0 : ℂ}
  (hU : IsOpen U) (hf : DifferentiableOn ℂ f U) (hz0 : z0 ∈ U)
  (hmax : ∃ r > 0, Metric.ball z0 r ⊆ U ∧ ∀ z ∈ Metric.ball z0 r, ‖f z‖ ≤ ‖f z0‖) :
  ∃ r > 0, Metric.ball z0 r ⊆ U ∧ ∀ z ∈ Metric.ball z0 r, f z = f z0 := by sorry
