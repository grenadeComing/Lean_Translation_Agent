import Mathlib

/-- Let (X,d) be a metric space. Suppose K ⊆ X is compact. For every ε > 0,
    there exists a finite set of points whose ε-balls cover K. -/
theorem compact_covered_by_finitely_many_balls {X : Type*} [MetricSpace X] {K : Set X}
  (hK : IsCompact K) (ε : ℝ) (hε : 0 < ε) :
  ∃ s : Finset X, K ⊆ ⋃ x ∈ s, Metric.ball x ε := by sorry
