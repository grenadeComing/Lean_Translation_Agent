import Mathlib
open Complex Metric Set Function
open scoped Topology

/-- Suppose f : ℂ → ℂ is holomorphic on the open unit disk (DifferentiableOn ℂ f (Metric.ball (0:ℂ) 1)) and maps the disk to itself (MapsTo f (Metric.ball (0:ℂ) 1) (Metric.ball (0:ℂ) 1)). If f(0) = 0, then ‖deriv f 0‖ ≤ 1. -/
theorem abs_deriv_le_one_of_maps_zero (f : ℂ → ℂ)
  (hf : DifferentiableOn ℂ f (Metric.ball (0 : ℂ) 1))
  (h_maps : MapsTo f (Metric.ball (0 : ℂ) 1) (Metric.ball (0 : ℂ) 1))
  (h0 : f 0 = 0) :
  ‖deriv f 0‖ ≤ 1 := by sorry
