import Mathlib

variable {X : Type _} [MetricSpace X]

/-- If K is a compact subset of a metric space X, then for every ε > 0 there exists a finite
ε-net for K (a finite set s such that K is covered by the ε-balls around elements of s). -/
theorem IsCompact.exists_finite_epsilon_net {K : Set X} (hK : IsCompact K) {ε : ℝ} (hε : 0 < ε) :
  ∃ s : Finset X, K ⊆ ⋃ x ∈ s, Ball x ε := by sorry
