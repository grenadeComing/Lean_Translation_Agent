import Mathlib

open Set Metric

theorem exists_compact_exhaustion_of_open (U : Set Complex) (hU : IsOpen U) :
  ∃ K : ℕ → Set Complex,
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ m : ℕ, ∃ c : Fin m → Complex, ∃ r : Fin m → ℝ,
      K n ⊆ ⋃ i, Metric.closedBall (c i) (r i) ∧ (⋃ i, Metric.closedBall (c i) (r i)) ⊆ interior (K (n+1))) := by
  sorry
