import Mathlib

theorem continuous_map_from_compact_to_hausdorff_is_proper {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) : IsProperMap f := by
  sorry
