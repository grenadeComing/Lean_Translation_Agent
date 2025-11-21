import Mathlib

variable {X : Type*} [MetricSpace X]

/-- In a metric space, compactness (every open cover has a finite subcover) implies sequential compactness:
    every sequence has a convergent subsequence. -/
theorem compact_metric_space_sequentially_compact (h : CompactSpace X) (u : ℕ → X) :
  ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : X),
    Filter.Tendsto (u ∘ φ) Filter.atTop (nhds x) := by sorry
