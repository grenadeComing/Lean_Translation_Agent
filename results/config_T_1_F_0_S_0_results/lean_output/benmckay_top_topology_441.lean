import Mathlib

/-- If X is compact and f : X → Y is continuous, then f is a closed map (maps closed sets to closed sets). -/
theorem compact_continuous_is_closed_map {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) [CompactSpace X] (hf : Continuous f) : IsClosedMap f := by sorry