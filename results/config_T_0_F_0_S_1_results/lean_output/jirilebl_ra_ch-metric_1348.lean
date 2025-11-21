import Mathlib

variable {α : Type _} [MetricSpace α]

theorem is_open_iff_forall_exists_ball_subset {S : Set α} :
  IsOpen S ↔ ∀ p ∈ S, ∃ ε : ℝ, 0 < ε ∧ Metric.ball p ε ⊆ S := by sorry