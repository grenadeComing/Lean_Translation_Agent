import Mathlib

/-- In a metric space, a set S is open iff for every p in S there is an ε > 0 with
    the open metric ball centered at p of radius ε contained in S. -/
theorem is_open_iff_forall_mem_ball_subset {α : Type*} [PseudoMetricSpace α] {S : Set α} :
  IsOpen S ↔ ∀ p ∈ S, ∃ ε : ℝ, 0 < ε ∧ Metric.ball p ε ⊆ S := by sorry
