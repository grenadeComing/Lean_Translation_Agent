import Mathlib

open Filter

/-- Let X be a metric space such that every sequence in X has a convergent subsequence.
    Then X is compact (every open cover has a finite subcover). -/
theorem compact_of_seq_compact {X : Type*} [MetricSpace X]
  (h : ∀ (f : ℕ → X), ∃ (s : ℕ → ℕ), StrictMono s ∧ ∃ (x : X), Tendsto (f ∘ s) atTop (nhds x)) :
  CompactSpace X := by sorry
