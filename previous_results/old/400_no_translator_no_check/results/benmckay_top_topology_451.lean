import Mathlib

open Filter

/-- In a metric space, sequential compactness (every sequence has a convergent subsequence)
implies compactness (the whole space is compact). -/
theorem metric_space.sequentially_compact_implies_compact (X : Type _) [MetricSpace X]
  (hseq : ∀ (u : ℕ → X), ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : X), Tendsto (u ∘ φ) atTop (nhds x)) :
  CompactSpace X := by sorry
