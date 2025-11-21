import Mathlib

theorem is_open_iff_ball {α : Type _} [MetricSpace α] {s : Set α} :
  IsOpen s ↔ ∀ p ∈ s, ∃ ε : ℝ, 0 < ε ∧ Metric.ball p ε ⊆ s := by sorry