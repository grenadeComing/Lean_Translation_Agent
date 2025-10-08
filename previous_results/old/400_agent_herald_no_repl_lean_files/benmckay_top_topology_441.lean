import Mathlib

/-- If X is compact and f : X → Y is continuous, then f is a closed map. -/
theorem compact_continuous_is_closed_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] {f : X → Y} (hf : Continuous f) : IsClosedMap f := by sorry
