import Mathlib

open Set MeasureTheory Topology Metric

/-- Every bounded convex set in R^n has boundary of volume zero (hence is Jordan measurable). -/
theorem bounded_convex_set_frontier_meas_zero {n : ℕ} (s : Set (Fin n → ℝ))
  (hconv : Convex ℝ s)
  (hbounded : ∃ (x0 : Fin n → ℝ) (R : ℝ), 0 < R ∧ s ⊆ Metric.ball x0 R) :
  MeasureTheory.MeasureSpace.volume (frontier s) = 0 := by sorry
