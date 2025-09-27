import Mathlib

/-!
# Closed sets and sequential limits in metric spaces

Theorem: In a metric space, a set S is closed iff every sequence in S that converges in X has its limit in S.
-/

variable {X : Type _} [MetricSpace X]

open Set

theorem isClosed_iff_seq_limit_in_S (S : Set X) :
  IsClosed S ↔
    ∀ (u : ℕ → X) (a : X), (∀ n, u n ∈ S) → Filter.Tendsto u Filter.atTop (nhds a) → a ∈ S := by sorry
