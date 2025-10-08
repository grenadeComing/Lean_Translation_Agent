import Mathlib

open Set

/--
Let U ⊆ ℂ be open. Then there exists a sequence K_n of compact subsets of U such that
K_n ⊆ interior (K_{n+1}), U = ⋃_{n=1}^∞ interior (K_n), and for each n there exists a finite
collection of closed disks D_{k n} with K_n ⊆ ⋃_k D_{k n} ⊆ interior (K_{n+1}).
-/
theorem exists_compact_sequence_covering_by_closed_disks {U : Set ℂ} (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    (U = (⋃ n, interior (K n))) ∧
    (∀ n, ∃ S : Set (ℂ × ℝ), S.Finite ∧ K n ⊆ (⋃ p ∈ S, Metric.closedBall p.fst p.snd) ∧ (⋃ p ∈ S, Metric.closedBall p.fst p.snd) ⊆ interior (K (n+1))) := by
  sorry
