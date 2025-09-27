import Mathlib

open Metric

theorem exists_point_with_smaller_norm {z0 : ℂ} {ε : ℝ} (hε : 0 < ε)
  (p : ℂ → ℂ) (hp_analytic : AnalyticOn ℂ p (Metric.ball z0 ε))
  (hp_nonconst : ∃ z ∈ Metric.ball z0 ε, p z ≠ p z0) (hp_ne0 : p z0 ≠ 0) :
  ∃ w ∈ Metric.ball z0 ε, ‖p w‖ < ‖p z0‖ := by sorry
