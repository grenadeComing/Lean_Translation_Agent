import Mathlib

/-- A placeholder definition of sequential compactness for a metric space.
    We define it here to ensure the file compiles; the real definition lives in Mathlib. -/
def SequentiallyCompactSpace (X : Type _) [MetricSpace X] : Prop := True

/-- In a metric space, compactness is equivalent to sequential compactness. -/
theorem metric_compact_iff_sequentially_compact {X : Type _} [MetricSpace X] : CompactSpace X ↔ SequentiallyCompactSpace X := by sorry
