import Mathlib

open Set

theorem exists_compact_exhaustion_by_closed_disks {U : Set ℂ} (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ U) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    U = Set.iUnion (fun n => interior (K n)) ∧
    (∀ n, ∃ (t : Finset (ℂ × ℝ)),
      (∀ p ∈ t, 0 ≤ p.2) ∧
      (K n ⊆ { z : ℂ | ∃ p ∈ t, Norm.norm (z - p.1) ≤ p.2 }) ∧
      ({ z : ℂ | ∃ p ∈ t, Norm.norm (z - p.1) ≤ p.2 } ⊆ interior (K (n+1)))) := by sorry
