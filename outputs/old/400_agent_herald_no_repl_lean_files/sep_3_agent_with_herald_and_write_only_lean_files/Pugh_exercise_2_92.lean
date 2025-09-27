import Mathlib

/-!
# Exercise 2.92 (Pugh)

Give a direct proof that the nested decreasing intersection of nonempty covering compact sets is nonempty.
-/

open Set

variable {α : Type*} [TopologicalSpace α]

/-- If K : ℕ → Set α is a sequence of nonempty compact sets with K (n+1) ⊆ K n,
then their intersection is nonempty. -/
theorem Pugh_exercise_2_92 {K : ℕ → Set α}
  (hK_compact : ∀ n, IsCompact (K n))
  (hK_nonempty : ∀ n, (K n).Nonempty)
  (hK_decr : ∀ n, K (n + 1) ⊆ K n) :
  (⋂ n, K n).Nonempty := by sorry
