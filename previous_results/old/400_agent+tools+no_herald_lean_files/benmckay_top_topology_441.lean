import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [CompactSpace X] [TopologicalSpace Y] [T2Space Y]

/-- If X is compact and Y is Hausdorff, any continuous map f : X → Y is a closed map. -/
theorem continuous.is_closed_map_of_compact_space (f : X → Y) (hf : Continuous f) : IsClosedMap f := by sorry
