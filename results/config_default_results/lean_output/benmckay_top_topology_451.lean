import Mathlib
open Filter
open Topology

/-- A metric space is sequentially compact if every sequence has a convergent subsequence. -/
def SequentiallyCompact (α : Type*) [MetricSpace α] : Prop :=
  ∀ (s : ℕ → α), ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : α), Filter.Tendsto (s ∘ φ) atTop (nhds x)

/-- If X is a metric space and X is sequentially compact then X is compact (every open cover admits a finite subcover). -/
theorem Metric.sequentially_compact_to_compact {α : Type*} [MetricSpace α] (h : SequentiallyCompact α) : CompactSpace α := by sorry
