import Mathlib

/-- Let (X,d) be a metric space. Suppose K ⊂ X is compact. Then for every ε > 0 there exists a finite ε-net for K. -/
theorem exists_finite_epsilon_net {α : Type*} [MetricSpace α] {K : Set α} (hK : IsCompact K) (ε : ℝ) (hε : 0 < ε) :
  ∃ N : Set α, Set.Finite N ∧ N ⊆ K ∧ ∀ x ∈ K, ∃ y ∈ N, dist x y < ε := by sorry