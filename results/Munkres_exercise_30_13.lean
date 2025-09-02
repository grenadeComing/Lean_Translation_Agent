import Mathlib

open Set

theorem countable_of_countable_dense {X : Type*} [TopologicalSpace X] {s : Set X} (hs : s.Countable) (hd : Dense s)
  {ι : Type*} {U : ι → Set X} (hopen : ∀ i, IsOpen (U i)) (hne : ∀ i, (U i).Nonempty)
  (hdisj : pairwise (fun i j => Disjoint (U i) (U j))) : Countable ι := by sorry
