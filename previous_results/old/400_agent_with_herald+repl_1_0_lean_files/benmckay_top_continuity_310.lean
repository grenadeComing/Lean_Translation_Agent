import Mathlib

/-- A continuous map from a compact space to a Hausdorff space is proper. -/
theorem continuous_compact_to_t2_is_proper {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] (f : X → Y) (hf : Continuous f) : IsProperMap f := by sorry
