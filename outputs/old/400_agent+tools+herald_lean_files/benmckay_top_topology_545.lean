import Mathlib

open Set

variable {X : Type _} {Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space X] [CompactSpace Y]

/-- Let X be Hausdorff and Y compact. The projection fst : X × Y → X is a closed map. -/
theorem prod_fst_is_closed_map_of_compact :
  IsClosedMap (Prod.fst : X × Y → X) := by
  -- proof omitted
  sorry
