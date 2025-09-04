import Mathlib

open Filter

lemma compact_metric.sequentially_compact {X : Type _} [MetricSpace X] [CompactSpace X] (u : ℕ → X) :
  ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : X), Filter.Tendsto (u ∘ φ) atTop (nhds x) := by sorry
