import Mathlib

open Filter
open Topology

/-- In a metric space, compactness is equivalent to sequential compactness:
Every sequence has a convergent subsequence. -/
theorem metric_space.compact_iff_sequentially_compact {X : Type*} [MetricSpace X] :
  CompactSpace X ↔
  (∀ (u : ℕ → X), ∃ (a : X) (s : ℕ → ℕ), StrictMono s ∧ Tendsto (u ∘ s) atTop (nhds a)) :=
by sorry
