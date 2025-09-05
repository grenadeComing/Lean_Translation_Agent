import Mathlib

/-- If X is a metric space and sequentially compact (every sequence has a convergent subsequence),
then X is compact (every open cover has a finite subcover). -/
theorem sequentially_compact_metric_imp_compact {X : Type _} [MetricSpace X] [SequentiallyCompactSpace X] :
  CompactSpace X := by sorry
