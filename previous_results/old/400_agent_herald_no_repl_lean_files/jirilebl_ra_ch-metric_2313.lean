import Mathlib

theorem compact_covered_by_finite_balls {X : Type*} [MetricSpace X] {K : Set X} (hK : IsCompact K) :
  ∀ ε : ℝ, 0 < ε → ∃ s : Finset X, K ⊆ ⋃ x ∈ s, Ball x ε := by sorry
