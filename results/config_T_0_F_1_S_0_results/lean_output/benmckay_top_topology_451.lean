import Mathlib

open Function

variable {X : Type _} [MetricSpace X]

/-- If every sequence in a metric space has a convergent subsequence, then the space is compact. -/
theorem sequentially_compact_metric_space_is_compact
  (h : ∀ (u : ℕ → X), ∃ (a : X) (φ : ℕ → ℕ), StrictMono φ ∧ Filter.Tendsto (u ∘ φ) Filter.atTop (nhds a)) :
  IsCompact (univ : Set X) := by sorry
