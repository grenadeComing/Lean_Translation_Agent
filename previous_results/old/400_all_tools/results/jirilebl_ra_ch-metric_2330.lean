import Mathlib

/-- Let (X,d) be a metric space. Suppose K ⊆ X is compact. For every ε > 0 there exists a finite ε-net for K,
    i.e. a finite set S ⊆ X such that K ⊆ ⋃ x ∈ S, ball x ε. -/
theorem exists_finite_epsilon_net_of_compact {X : Type*} [MetricSpace X] {K : Set X} (hK : IsCompact K)
  {ε : ℝ} (ε_pos : 0 < ε) : ∃ S : Finset X, K ⊆ (⋃ x ∈ (S : Set X), Metric.ball x ε) := by sorry
