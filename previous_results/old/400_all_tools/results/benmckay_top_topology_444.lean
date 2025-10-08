import Mathlib

/-- A space is sequentially compact if every sequence has a convergent subsequence. -/
def sequentially_compact (X : Type*) [TopologicalSpace X] : Prop :=
  ∀ (u : ℕ → X), ∃ (f : ℕ → ℕ) (hf : StrictMono f) (x : X), Filter.Tendsto (u ∘ f) (Filter.atTop : Filter ℕ) (nhds (x : X))

theorem compact_iff_sequentially_compact_of_metricspace {X : Type*} [MetricSpace X] :
  CompactSpace X ↔ sequentially_compact X := by sorry
