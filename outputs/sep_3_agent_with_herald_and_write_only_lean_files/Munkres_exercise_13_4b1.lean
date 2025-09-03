import Mathlib

/-!
Let T_α be a family of topologies on X. Show there is a unique smallest topology on X
containing all the collections T_α.
-/

theorem exists_unique_smallest_topology {α : Type _} {X : Type _} (T : α → TopologicalSpace X) :
  ∃! (t0 : TopologicalSpace X), (∀ a, T a ≤ t0) ∧ (∀ t' : TopologicalSpace X, (∀ a, T a ≤ t') → t0 ≤ t') := by sorry
