import Mathlib

open Set

variable {X : Type*} [MetricSpace X]

theorem metric_isOpen_iff_ball_subset (S : Set X) : IsOpen S ↔ ∀ p ∈ S, ∃ ε > 0, Metric.ball p ε ⊆ S := by
  -- This is a standard characterization of open sets in a metric space.
  sorry
