import Mathlib

-- In a metric space, S is open iff for every p ∈ S there is an ε > 0 with Ball(p, ε) ⊆ S.

theorem is_open_iff_forall_exists_ball {α : Type _} [MetricSpace α] {S : Set α} :
  IsOpen S ↔ (∀ p ∈ S, ∃ ε > 0, Metric.ball p ε ⊆ S) := by sorry
