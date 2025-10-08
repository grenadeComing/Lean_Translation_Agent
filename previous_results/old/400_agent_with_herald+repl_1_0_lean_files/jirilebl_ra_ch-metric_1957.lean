import Mathlib

open Filter

variable {X : Type _} [MetricSpace X] [CompactSpace X]

/-- A compact metric space is sequentially compact: every sequence has a convergent subsequence. -/
theorem compact_metric_sequentially_compact (s : ℕ → X) :
  ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∃ x : X, Tendsto (s ∘ φ) atTop (𝓝 x) := by
  sorry
