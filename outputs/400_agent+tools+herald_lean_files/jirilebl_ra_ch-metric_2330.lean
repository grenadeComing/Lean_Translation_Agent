import Mathlib

open Metric Set

/-- If K is compact in a pseudometric space X, then for every ε > 0 there exists a finite ε-net for K. -/
theorem compact_exists_finite_epsilon_net {X : Type*} [PseudoMetricSpace X] {K : Set X} (hK : IsCompact K) :
  ∀ ε : ℝ, ε > 0 → ∃ s : Finset X, K ⊆ ⋃ x ∈ s, Metric.ball x ε := by sorry
