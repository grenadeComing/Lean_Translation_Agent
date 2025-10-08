import Mathlib

/-- In a complete metric space, a closed totally bounded set is compact. -/
theorem totally_bounded_closed_is_compact {X : Type _} [MetricSpace X] [CompleteSpace X]
  {S : Set X} (hS : TotallyBounded S) (hSclosed : IsClosed S) : IsCompact S := by
  sorry
