import Mathlib

open Filter

variable (X : Type*) [MetricSpace X]

/-- A metric space is sequentially compact if every sequence has a convergent subsequence. -/
def sequentially_compact_space : Prop :=
  ∀ (u : ℕ → X), ∃ (φ : ℕ → ℕ), StrictMono φ ∧ ∃ x : X, Tendsto (u ∘ φ) atTop (nhds x)

/-- In a metric space, compactness is equivalent to sequential compactness. -/
theorem compact_space_iff_sequentially_compact : CompactSpace X ↔ sequentially_compact_space X := by sorry
