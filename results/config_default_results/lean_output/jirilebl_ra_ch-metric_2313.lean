import Mathlib

/-- Let (X,d) be a metric space. Suppose K ⊂ X is compact. Then for every ε > 0 there
exists a finite set of centers (contained in K) whose radius-ε open balls cover K. -/
theorem compact_finite_ball_cover {α : Type*} [MetricSpace α] {K : Set α} (hK : IsCompact K) :
  ∀ ε : ℝ, 0 < ε → ∃ (t : Finset α), (t.toSet : Set α) ⊆ K ∧ K ⊆ (⋃ x ∈ t.toSet, Metric.ball x ε) := by sorry
