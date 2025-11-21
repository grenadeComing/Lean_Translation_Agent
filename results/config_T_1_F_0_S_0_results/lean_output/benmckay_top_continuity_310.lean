import Mathlib

/-- Every continuous map f : X → Y from a compact space X to a Hausdorff space Y is proper. -/
variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace X] [T2Space Y]

theorem is_proper_map_of_compact_source_of_t2_target (f : X → Y) (hf : Continuous f) : IsProperMap f := by sorry
