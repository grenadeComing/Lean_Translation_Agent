import Mathlib

/-- Let X be a Hausdorff topological space and Y a compact topological space.
The first projection X × Y → X is a closed map. -/
theorem fst_is_closed_map_of_t2_compact {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space X] [CompactSpace Y] : IsClosedMap (Prod.fst : X × Y → X) := by sorry
