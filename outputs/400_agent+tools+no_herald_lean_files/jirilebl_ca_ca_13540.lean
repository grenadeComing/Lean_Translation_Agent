import Mathlib

open Set Metric Topology

theorem exists_compact_exhaustion_by_closed_disks (U : Set ℂ) (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    U = (⋃ n : ℕ, interior (K n)) ∧
    (∀ n, ∃ (s : Finset (ℂ × ℝ)),
      K n ⊆ (⋃ p ∈ s, Metric.closedBall p.fst p.snd) ∧
      (⋃ p ∈ s, Metric.closedBall p.fst p.snd) ⊆ interior (K (n+1))) := by sorry
