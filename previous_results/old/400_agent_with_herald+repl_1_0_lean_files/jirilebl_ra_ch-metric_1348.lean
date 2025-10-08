import Mathlib

variable {α : Type*} [MetricSpace α]

theorem is_open_iff_forall_mem_ball_subset {S : Set α} :
  IsOpen S ↔ (∀ p ∈ S, ∃ ε > 0, Metric.ball p ε ⊆ S) := by sorry
