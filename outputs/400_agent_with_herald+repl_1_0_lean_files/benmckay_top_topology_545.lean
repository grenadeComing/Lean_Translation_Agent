import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [T2Space X] [TopologicalSpace Y] [CompactSpace Y]

theorem prod_fst_is_closed_map : IsClosedMap (Prod.fst : X × Y → X) := by sorry
