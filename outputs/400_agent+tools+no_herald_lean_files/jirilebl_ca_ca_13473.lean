import Mathlib

open Set

theorem exists_compact_exhaustion_by_closed_disks {U : Set ℂ} (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n) ∧ K n ⊆ U) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ (F : Finset (ℂ × ℝ)), K n ⊆ (⋃ p ∈ F, Metric.closedBall p.1 p.2) ∧ (⋃ p ∈ F, Metric.closedBall p.1 p.2) ⊆ interior (K (n+1))) := by
  sorry
