import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- Every proper map f : X → Y to a locally compact Hausdorff space Y is closed. -/
theorem is_proper_map_closed_of_locally_compact_t2 (f : X → Y) (hf : IsProperMap f)
  (hY : LocallyCompactSpace Y) (hT2 : T2Space Y) : IsClosedMap f := by sorry
