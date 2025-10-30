import Mathlib

/-- In a metric space, S is closed iff every sequence in S that converges in X has its limit in S. -/
theorem closed_iff_seq_tendsto {X : Type*} [MetricSpace X] (S : Set X) :
  IsClosed S ↔ ∀ x : X, ∀ u : ℕ → X, (∀ n, u n ∈ S) → Tendsto u atTop (𝓝 x) → x ∈ S := by
  sorry
