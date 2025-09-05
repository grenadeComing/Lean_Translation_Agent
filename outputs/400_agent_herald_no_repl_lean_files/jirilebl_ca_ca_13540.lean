import Mathlib

open Set Metric

lemma exists_compact_exhaustion_of_open_set_with_closed_disks (U : Set ℂ) (hU : IsOpen U) :
  ∃ K : ℕ → Set ℂ,
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ (S : Finset (ℂ × ℝ)),
       K n ⊆ (⋃ p ∈ (S : Set (ℂ × ℝ)), Metric.closed_ball p.1 p.2) ∧
       (⋃ p ∈ (S : Set (ℂ × ℝ)), Metric.closed_ball p.1 p.2) ⊆ interior (K (n+1)))
:= by sorry
