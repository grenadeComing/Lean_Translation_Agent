import Mathlib

theorem compact_iff_sequentially_compact_metric_space {X : Type _} [MetricSpace X] :
  CompactSpace X ↔ ∀ (u : ℕ → X), ∃ (x : X) (s : ℕ → ℕ), StrictMono s ∧ Filter.Tendsto (u ∘ s) Filter.atTop (nhds x) := by sorry
