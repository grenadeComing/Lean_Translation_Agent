import Mathlib

/-- Every proper map f : X → Y to a locally compact Hausdorff space Y is closed. -/
theorem proper_map_to_locally_compact_t2_is_closed {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (hf : IsProperMap f) : IsClosedMap f := by sorry
