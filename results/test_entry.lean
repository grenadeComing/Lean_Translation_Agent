import Mathlib

/-- Let (X, T) be a Hausdorff topological space. Define X' := X ∪ {∞} and T' := T ∪ { (X \ K) ∪ {∞} : K ⊆ X is compact }.
Show that T' is a topology on X'. -/
theorem one_point_compactification_is_topology
  (X : Type*) [TopologicalSpace X] [T2Space X] :
  TopologicalSpace (OnePoint X) := by
  -- proof sketch: standard result that the one-point compactification of a locally compact Hausdorff space is a topology
  sorry
