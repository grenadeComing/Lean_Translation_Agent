import Mathlib

theorem continuous_is_closed_map_of_compact_space {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace X] {f : X → Y} (hf : Continuous f) : IsClosedMap f := by sorry