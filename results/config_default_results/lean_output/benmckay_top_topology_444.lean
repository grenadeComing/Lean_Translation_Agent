import Mathlib

theorem compact_iff_seq_compact (X : Type) [MetricSpace X] :
  CompactSpace X ↔ SequentiallyCompact X := by
  simpa using metric.compact_iff_seq_compact (α := X)
