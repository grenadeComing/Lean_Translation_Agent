import Mathlib

open Metric

theorem exists_finite_epsilon_net {X : Type _} [MetricSpace X] {K : Set X} (hK : IsCompact K) :
  ∀ ε : ℝ, ε > 0 → ∃ s : Finset X, K ⊆ (⋃ x ∈ s, ball x ε) := by
  sorry
