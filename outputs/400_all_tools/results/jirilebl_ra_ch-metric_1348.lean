import Mathlib

theorem isOpen_iff_forall_exists_ball {α : Type _} [PseudoMetricSpace α] {s : Set α} :
  IsOpen s ↔ ∀ p ∈ s, ∃ ε > 0, Metric.ball p ε ⊆ s := by sorry
