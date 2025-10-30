-- Translation of the statement into Lean4 (placeholder proof).
import Mathlib

open Set

lemma exists_compact_sequence_for_open_subset
  (U : Set ℂ) (hU : IsOpen U) :
  ∃ K : ℕ → Set ℂ,
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n + 1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ D : Finset (ℂ × ℝ),
      K n ⊆ ⋃ p ∈ D, closedBall p.1 p.2 ∧
      ⋃ p ∈ D, closedBall p.1 p.2 ⊆ interior (K (n + 1))) := by
  sorry
