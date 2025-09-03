import Mathlib

open Set

theorem countable_of_countable_dense_disjoint_open_sets {X : Type*} [TopologicalSpace X]
  {D : Set X} (hD_count : Countable D) (hD_dense : Dense D)
  {ι : Type*} (U : ι → Set X)
  (hU_open : ∀ i, IsOpen (U i)) (hU_nonempty : ∀ i, (U i).Nonempty)
  (hU_disjoint : ∀ i j, i ≠ j → Disjoint (U i) (U j)) :
  Countable ι := by sorry
