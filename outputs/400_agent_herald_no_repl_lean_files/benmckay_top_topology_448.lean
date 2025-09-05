import Mathlib

variable {X : Type*} [MetricSpace X] [Metric.ProperSpace X]

/-- In a proper metric space, every closed bounded set is compact. -/
theorem closed_bounded_is_compact_of_proper (S : Set X) (hS : IsClosed S) (hSbd : Bounded S) : IsCompact S := by sorry
