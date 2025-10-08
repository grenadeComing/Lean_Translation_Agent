import Mathlib

/-!
Let X be a Hausdorff topological space and Y any compact topological space.
Prove that the first projection X × Y → X is a closed map.
-/

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space X] [CompactSpace Y]

theorem fst_is_closed_map_of_compact_space : IsClosedMap (Prod.fst : X × Y → X) := by sorry
