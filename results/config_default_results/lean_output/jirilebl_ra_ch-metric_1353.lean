import Mathlib
open Set Filter

/-- Prove that in a metric space, S is closed if and only if every sequence in S that converges in X has its limit in S. -/
theorem is_closed_iff_seq_closed {X : Type _} [MetricSpace X] {S : Set X} :
  IsClosed (S : Set X) ↔ ∀ (u : ℕ → X) (x : X), (∀ n, u n ∈ S) → Tendsto u atTop (nhds x) → x ∈ S := by sorry
