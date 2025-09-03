import Mathlib

open Set

theorem countable_prod_of_countable_dense {ι : Type*} [Countable ι] {X : ι → Type*}
  [∀ i, TopologicalSpace (X i)] (D : ∀ i, Set (X i))
  (hD_countable : ∀ i, (D i).Countable) (hD_dense : ∀ i, Dense (D i)) :
  ∃ S : Set (∀ i, X i), S.Countable ∧ Dense S := by sorry
