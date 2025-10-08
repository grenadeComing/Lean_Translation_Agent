import Mathlib

/--
Let X be a Hausdorff topological space and Y any compact topological space.
The first projection X × Y → X is a closed map.
-/
theorem prod_fst_is_closed_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space X] [CompactSpace Y] : IsClosedMap (Prod.fst : X × Y → X) := by sorry
