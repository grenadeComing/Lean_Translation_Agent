import Mathlib

/-- In a metric space, a set S is open iff for every p ∈ S there exists ε > 0 such that the open
ball of radius ε around p is contained in S. -/
theorem is_open_iff_forall_exists_ball_subset {α : Type _} [MetricSpace α] {S : Set α} :
  IsOpen S ↔ ∀ p ∈ S, ∃ ε > 0, Metric.ball p ε ⊆ S := by sorry
