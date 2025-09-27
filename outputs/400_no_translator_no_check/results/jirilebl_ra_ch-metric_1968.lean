import Mathlib

open Filter Topology

/--
If X is a metric space in which every sequence has a convergent subsequence,
then X is compact (every open cover has a finite subcover).
-/
theorem sequentially_compact_metric_space_compact {X : Type*} [MetricSpace X]
  (h_seq : ∀ s : ℕ → X, ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : X), Tendsto (s ∘ φ) atTop (nhds x)) :
  CompactSpace X := by sorry
