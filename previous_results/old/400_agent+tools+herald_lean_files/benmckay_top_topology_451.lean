import Mathlib

open Filter

/-- A metric space is sequentially compact if every sequence has a convergent subsequence. -/
def SequentiallyCompact (X : Type _) [MetricSpace X] : Prop :=
  ∀ s : ℕ → X, ∃ (x : X) (φ : ℕ → ℕ), StrictMono φ ∧ Tendsto (s ∘ φ) atTop (nhds x)

/-- In a metric space, sequential compactness implies compactness (every open cover has a finite subcover). -/
theorem sequentially_compact_metric_space_compact {X : Type _} [MetricSpace X]
  (h : SequentiallyCompact X) : CompactSpace X := by sorry
