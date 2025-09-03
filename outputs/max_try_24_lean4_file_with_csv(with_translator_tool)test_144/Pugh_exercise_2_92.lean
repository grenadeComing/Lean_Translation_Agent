import Mathlib

open Set

theorem Pugh_exercise_2_92 {α : Type _} [TopologicalSpace α] [CompactSpace α] (K : ℕ → Set α)
  (hK : ∀ n, IsCompact (K n)) (hne : ∀ n, (K n).Nonempty) (hmono : ∀ n, K (n+1) ⊆ K n) :
  (⋂ n, K n).Nonempty := by
  sorry
