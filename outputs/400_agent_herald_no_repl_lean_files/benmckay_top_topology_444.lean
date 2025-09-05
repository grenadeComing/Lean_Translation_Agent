import Mathlib
open Set Function Filter TopologicalSpace Bornology
open scoped Topology Uniformity

/-- Prove that a metric space X is compact if and only if X is sequentially compact. -/
theorem compactSpace_iff_sequentiallyCompactSpace {X : Type*} [MetricSpace X] :
    CompactSpace X ↔ SequentiallyCompactSpace X := by sorry
