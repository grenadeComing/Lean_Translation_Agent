import Mathlib
open Set Filter Function Topology

/-- Show that if $X$ has a countable dense subset, every collection of disjoint open sets in $X$ is countable. -/
theorem example_countable_disjoint {X : Type*} [TopologicalSpace X] :
  (∃ S : Set X, S.Countable ∧ closure S = (univ : Set X)) →
  ∀ (C : Set (Set X)), (∀ U ∈ C, IsOpen U ∧ U ≠ (∅ : Set X)) →
    (∀ U V ∈ C, U ≠ V → Disjoint U V) → C.Countable := by sorry
