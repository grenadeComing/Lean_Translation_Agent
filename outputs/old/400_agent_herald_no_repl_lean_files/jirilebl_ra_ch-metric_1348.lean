import Mathlib

open Set Metric

theorem metric_open_iff_ball_subset {α : Type _} [MetricSpace α] {S : Set α} :
  IsOpen S ↔ ∀ p ∈ S, ∃ ε > 0, Ball p ε ⊆ S := by sorry
