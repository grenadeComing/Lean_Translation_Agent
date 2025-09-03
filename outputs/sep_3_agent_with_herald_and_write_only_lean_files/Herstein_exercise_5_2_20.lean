import Mathlib

open Set

/-- Let V be a vector space over an infinite field K. Show that V cannot be the set-theoretic
union of a finite number of proper subspaces of V. -/
theorem herstein_exercise_5_2_20 {K : Type _} [Field K] [Infinite K] {V : Type _} [AddCommGroup V]
  [Module K V] (s : Finset (Submodule K V)) (h : ∀ W ∈ s, (W : Set V) ≠ Set.univ) :
  (⋃ W ∈ s, (W : Set V)) ≠ (Set.univ : Set V) := by sorry
