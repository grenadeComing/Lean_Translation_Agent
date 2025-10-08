import Mathlib
open Set Filter
open scoped Topology

variable {X : Type _} [MetricSpace X]

/-- In a metric space, a set S is closed iff every sequence in S that converges in X has its limit in S. -/
theorem isClosed_iff_seq_limit (S : Set X) :
  IsClosed S ↔ ∀ (u : ℕ → X) (a : X), (∀ n, u n ∈ S) → Tendsto u atTop (𝓝 a) → a ∈ S := by sorry
