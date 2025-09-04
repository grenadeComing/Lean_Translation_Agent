import Mathlib

open Filter

variable (X : Type*) [MetricSpace X]

/-- If every sequence in a metric space has a convergent subsequence, then the space is compact. -/
theorem sequential_compact_metric_compact
  (h : ∀ u : ℕ → X, ∃ v : ℕ → ℕ, StrictMono v ∧ ∃ x : X, Tendsto (u ∘ v) atTop (nhds x)) :
  CompactSpace X := by
  sorry
