import Mathlib

open Metric Set

theorem compact_exists_finite_epsilon_net {X : Type _} [MetricSpace X] {K : Set X} (hK : IsCompact K) :
  ∀ ε : ℝ, 0 < ε → ∃ S : Finset X, K ⊆ (⋃ x ∈ S, ball x ε) := by
  sorry
