import Mathlib
open Set Filter

/-- In a metric space, S is closed iff every sequence in S that converges in X has its limit in S. -/
theorem isClosed_iff_seq_tendsto_mem {X : Type _} [MetricSpace X] {S : Set X} :
  IsClosed S ↔ ∀ (a : ℕ → X) (l : X), (∀ n, a n ∈ S) → Tendsto a atTop (𝓝 l) → l ∈ S := by sorry