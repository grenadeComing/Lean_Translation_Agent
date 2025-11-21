import Mathlib

/-- If X is a metric space such that every open cover of X has a finite subcover (i.e. X is compact),
then every sequence in X has a convergent subsequence. -/
theorem sequential_compact_of_compact_metric_space {X : Type*} [MetricSpace X] [CompactSpace X] :
  ∀ (s : ℕ → X), ∃ (φ : ℕ → ℕ), StrictMono φ ∧ ∃ (x : X), Filter.Tendsto (fun n => s (φ n)) Filter.atTop (nhds x) := by sorry
