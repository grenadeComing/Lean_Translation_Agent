import Mathlib

/-- A metric space X is compact iff X is sequentially compact. -/
theorem metric_space.compact_iff_sequentially_compact {X : Type _} [MetricSpace X] :
  CompactSpace X ↔
  ∀ (u : ℕ → X), ∃ (x : X) (φ : ℕ → ℕ), StrictMono φ ∧ Filter.Tendsto (u ∘ φ) Filter.atTop (nhds x) := by sorry
