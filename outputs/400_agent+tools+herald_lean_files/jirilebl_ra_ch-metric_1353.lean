import Mathlib

open Filter

variable {α : Type*} [MetricSpace α] {s : Set α}

theorem isClosed_iff_seq_closed : IsClosed s ↔
  ∀ (u : ℕ → α) (x : α), (∀ n, u n ∈ s) → Tendsto u atTop (nhds x) → x ∈ s := by sorry
