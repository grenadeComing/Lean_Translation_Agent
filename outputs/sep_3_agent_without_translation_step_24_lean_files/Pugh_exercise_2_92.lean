import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X] [CompactSpace X]

lemma Pugh_exercise_2_92 (K : ℕ → Set X)
  (hcomp : ∀ n, IsCompact (K n))
  (hne : ∀ n, (K n).Nonempty)
  (hmono : ∀ n, K (n+1) ⊆ K n) :
  (⋂ n, K n).Nonempty := by sorry
