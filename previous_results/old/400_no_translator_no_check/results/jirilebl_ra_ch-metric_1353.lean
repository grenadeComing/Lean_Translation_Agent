import Mathlib

open Filter Set

variable {X : Type*} [MetricSpace X] {S : Set X}

theorem is_closed_iff_seq_tendsto_nhds :
  IsClosed (S : Set X) ↔ ∀ (u : ℕ → X) (x : X), (∀ n, u n ∈ S) → Tendsto u atTop (nhds x) → x ∈ S := by
  sorry
