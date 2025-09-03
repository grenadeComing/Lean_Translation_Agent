import Mathlib

/-- A connected metric space with more than one point is uncountable. -/
theorem connected_metric_space_uncountable {α : Type _} [MetricSpace α] [ConnectedSpace α]
  (hne : ∃ x y : α, x ≠ y) : ¬ Set.Countable (univ : Set α) := by sorry
