import Mathlib

/-- If X is a compact metric space then every sequence has a convergent subsequence. -/
theorem tendsto_subseq_of_compact_space {X : Type _} [MetricSpace X] [CompactSpace X] (u : ℕ → X) :
  ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∃ x : X, Filter.Tendsto (u ∘ φ) Filter.atTop (nhds x) := by sorry
