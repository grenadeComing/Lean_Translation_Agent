import Mathlib
open Set Filter Topology

/-- In a metric space, sequential compactness (every sequence has a convergent subsequence)
implies compactness (every open cover has a finite subcover). -/
theorem sequentially_compact_metric_space_is_compact {X : Type*} [MetricSpace X]
  (hseq : ∀ s : ℕ → X, ∃ a : X, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (s ∘ φ) atTop (𝓝 a)) :
  IsCompact (univ : Set X) := by
  sorry
