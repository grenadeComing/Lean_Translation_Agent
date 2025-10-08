import Mathlib

/-- If a countable product of topological spaces each has a countable dense subset,
then the product has a countable dense subset. -/
theorem Munkres_exercise_30_10 {ι : Type*} [Countable ι] {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
  (s : ∀ i, Set (X i)) (h : ∀ i, s i.Countable ∧ Dense (s i)) :
  ∃ S : Set (∀ i, X i), S.Countable ∧ Dense S := by sorry
