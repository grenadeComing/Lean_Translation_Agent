import Mathlib

/-!
Proves that in a metric space, a set s is closed iff whenever a sequence in s converges (in the ambient space),
its limit lies in s.
-/

theorem isClosed_iff_seq_tendsto_mem {α : Type*} [MetricSpace α] (s : Set α) :
  IsClosed s ↔ ∀ (u : ℕ → α) (a : α), (∀ n, u n ∈ s) → Tendsto u atTop (𝓝 a) → a ∈ s := by
  sorry
