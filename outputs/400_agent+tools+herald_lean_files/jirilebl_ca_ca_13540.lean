import Mathlib

open Set Metric

theorem exists_compact_exhaustion_of_open_complex {U : Set Complex} (hU : IsOpen U) :
  ∃ (K : ℕ → Set Complex),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    U = ⋃ n, interior (K n) ∧
    ∀ n, ∃ (s : Finset (Complex × ℝ)),
      K n ⊆ ⋃ p ∈ s, closedBall p.1 p.2 ∧ (⋃ p ∈ s, closedBall p.1 p.2) ⊆ interior (K (n+1)) := by sorry
