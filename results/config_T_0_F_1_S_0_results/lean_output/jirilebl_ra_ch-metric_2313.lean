import Mathlib

variable {X : Type _} [MetricSpace X]

theorem compact_covered_by_finitely_many_balls (K : Set X) (hK : IsCompact K) :
  ∀ ε : ℝ, ε > 0 → ∃ s : Finset X, ∀ x ∈ K, ∃ a ∈ s, dist x a < ε := by sorry
