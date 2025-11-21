import Mathlib

variable {X : Type*} [MetricSpace X] {K : Set X}

theorem isCompact.exists_finite_cover_ball (hK : IsCompact K) :
  ∀ ε : ℝ, 0 < ε → ∃ s : Finset X, K ⊆ (⋃ x ∈ s, Metric.ball x ε) := by sorry