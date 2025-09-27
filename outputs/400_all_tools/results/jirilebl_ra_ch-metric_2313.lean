import Mathlib

/-- Let (X, d) be a metric space. Suppose K ⊂ X is compact. Then for every ε > 0,
K is the union of finitely many open balls of radius ε. -/
theorem compact_covered_by_finitely_many_balls {X : Type*} [MetricSpace X] {K : Set X}
  (hK : IsCompact K) {ε : ℝ} (ε_pos : 0 < ε) :
  ∃ (s : Set X), Set.Finite s ∧ K ⊆ ⋃ x ∈ s, Metric.ball x ε := by sorry
