import Mathlib

open Metric Set

namespace IsCompact

variable {X : Type _} [MetricSpace X]

theorem exists_finite_epsilon_net {K : Set X} (hK : IsCompact K) (ε : ℝ) (hε : 0 < ε) :
  ∃ s : Finset X, K ⊆ ⋃ x ∈ s, Metric.ball x ε := by sorry

end IsCompact
