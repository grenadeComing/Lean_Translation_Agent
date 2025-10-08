import Mathlib

/-!
Exercise: Show that if X has a countable dense subset, every collection of disjoint open sets in X is countable.

We state a version assuming each open set in the family is nonempty. The proof is omitted (sorry) as requested.
-/

theorem Munkres_exercise_30_13 {X : Type*} [TopologicalSpace X] {s : Set X}
  (hs : s.Countable) (hd : Dense s)
  {ι : Type*} (U : ι → Set X) (hU : ∀ i, IsOpen (U i)) (hne : ∀ i, (U i).Nonempty)
  (hdisj : ∀ i j, i ≠ j → Disjoint (U i) (U j)) :
  (Set.univ : Set ι).Countable := by
  -- proof omitted
  sorry
