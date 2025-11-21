import Mathlib

open Filter

/-- In metric spaces, compactness is equivalent to sequential compactness: every sequence has a
convergent subsequence. -/
theorem metric_compact_iff_sequentially_compact (X : Type _) [MetricSpace X] :
  CompactSpace X ↔ ∀ (u : ℕ → X), ∃ y : X, ∃ s : ℕ → ℕ, StrictMono s ∧ Tendsto (u ∘ s) atTop (𝓝 y) := by sorry