import Mathlib

/-- Let (X,d) be a metric space. Suppose K \subset X is compact. Prove that there exists a finite \epsilon-net for K, for every \epsilon > 0. -/
theorem exists_finite_epsilon_net {X : Type*} [MetricSpace X] {K : Set X} (hK : IsCompact K) (ε : ℝ) (hε : 0 < ε) :
  ∃ S : Finset X, K ⊆ ⋃ x ∈ S, Metric.ball x ε := by sorry
