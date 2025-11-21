import Mathlib

theorem is_closed_iff_seq_limit {α : Type _} [MetricSpace α] {s : Set α} :
  IsClosed s ↔ ∀ (u : ℕ → α) (a : α), (∀ n, u n ∈ s) → Tendsto u atTop (𝓝 a) → a ∈ s := by sorry
