import Mathlib

/-!
Munkres exercise 30.10: If X is a countable product of spaces having countable dense
subsets, then X has a countable dense subset.
-/

theorem munkres_exercise_30_10 {ι : Type*} [Countable ι] {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (s : ∀ i, Set (X i)) (hs_count : ∀ i, (s i).Countable) (hs_dense : ∀ i, Dense (s i)) :
  ∃ D : Set (∀ i, X i), D.Countable ∧ Dense D := by sorry
