import Mathlib

variable {X : Type _} [MetricSpace X] [ProperSpace X]

/-- In a proper metric space, every closed and bounded subset is compact. -/
theorem closed_bounded_compact {S : Set X} (hclosed : IsClosed S) (hbounded : Bounded S) : IsCompact S := by sorry
