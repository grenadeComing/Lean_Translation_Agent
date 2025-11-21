import Mathlib

/-- In a metric space, a set s is open iff for every p ∈ s there exists ε > 0 such that
    the open ball of radius ε around p is contained in s. -/
theorem is_open_iff_ball_subset {α : Type _} [PseudoMetricSpace α] {s : Set α} :
  IsOpen s ↔ ∀ p ∈ s, ∃ ε > 0, Metric.ball p ε ⊆ s := by sorry
