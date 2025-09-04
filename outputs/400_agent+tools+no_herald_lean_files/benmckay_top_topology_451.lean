import Mathlib

open Filter Topology Set

variable {X : Type _} [MetricSpace X]

/-- In a metric space, sequential compactness (every sequence has a convergent subsequence)
implies compactness (the whole space is compact). -/
theorem sequentially_compact_metric_implies_compact
  (hseq : ∀ (u : ℕ → X), ∃ x : X, ∃ s : ℕ → ℕ, StrictMono s ∧ Tendsto (u ∘ s) atTop (𝓝 x)) :
  IsCompact (univ : Set X) := by sorry
