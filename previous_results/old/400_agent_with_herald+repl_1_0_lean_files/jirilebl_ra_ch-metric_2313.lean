import Mathlib

variable {X : Type _} [MetricSpace X]

/-- If K is compact, then for every ε > 0 there is a finite set of centers (lying in K)
whose ε-balls cover K. -/
theorem IsCompact.exists_finite_ball_cover (K : Set X) (hK : IsCompact K) (ε : ℝ) (hε : 0 < ε) :
  ∃ s : Set X, s.Finite ∧ s ⊆ K ∧ K ⊆ ⋃ x ∈ s, Metric.ball x ε := by sorry
