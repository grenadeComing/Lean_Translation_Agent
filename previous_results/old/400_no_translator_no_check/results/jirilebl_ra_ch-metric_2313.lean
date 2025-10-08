import Mathlib

/-- In a metric space, every compact set can be covered by finitely many open balls of any fixed positive radius. -/
theorem compact.exists_finite_ball_cover {X : Type*} [MetricSpace X] {K : Set X} (hK : IsCompact K) :
  ∀ ε : ℝ, 0 < ε → ∃ s : Finset X, K ⊆ (⋃ x ∈ (s : Set X), Metric.ball x ε) := by
  sorry
