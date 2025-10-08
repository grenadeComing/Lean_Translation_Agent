import Mathlib

open Function Filter

/-- A metric space is sequentially compact if every sequence has a convergent subsequence. -/
def sequentially_compact (X : Type*) [MetricSpace X] : Prop :=
  ∀ (u : ℕ → X), ∃ (f : ℕ → ℕ) (hf : StrictMono f) (x : X), Tendsto (u ∘ f) atTop (nhds x)

/-- In a metric space, compactness is equivalent to sequential compactness. -/
theorem metric_space.compact_iff_sequentially_compact {X : Type*} [MetricSpace X] :
  CompactSpace X ↔ sequentially_compact X := by sorry
