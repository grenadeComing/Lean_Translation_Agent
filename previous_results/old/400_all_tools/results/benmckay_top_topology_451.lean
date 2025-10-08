import Mathlib
open Set Function Filter TopologicalSpace Bornology
open scoped Topology Uniformity
open TopologicalSpace FirstCountableTopology
open FirstCountableTopology

/-- Let X be a metric space (X : Type*) with a MetricSpace instance. Suppose X is sequentially compact (every sequence has a convergent subsequence). Prove that X is compact (every open cover has a finite subcover). Translate to Lean4 and end the statement with := by sorry. Import Mathlib at the top. Use standard mathlib names for metric spaces, sequential compactness, and compactness. -/
theorem of_seq_compact_metric {X : Type _} [MetricSpace X] [SeqCompactSpace X] : CompactSpace X := by sorry
