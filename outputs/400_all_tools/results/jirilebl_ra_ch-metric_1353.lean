import Mathlib
open Set Filter
open Metric

/-- In a metric space X, a set S is closed iff every sequence (x_n) in S that converges in X has its limit in S. More precisely: For a metric space (X, dist), for any S : Set X, IsClosed S ↔ (∀ (x : ℕ → X) (a : X), (∀ n, x n ∈ S) → Tendsto x atTop (nhds a) → a ∈ S). End the Lean statement with := by sorry and import Mathlib at the top. -/
theorem isClosed_iff_seq_limit {X : Type*} [MetricSpace X] (S : Set X) :
  IsClosed S ↔ ∀ (x : ℕ → X), (∀ n, x n ∈ S) → ∀ (a : X), Tendsto x atTop (nhds a) → a ∈ S :=  by sorry
