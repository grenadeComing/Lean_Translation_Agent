import Mathlib

/-!
Every continuous map f : X → Y from a compact space X to a Hausdorff space Y is proper.
-/

theorem continuous_map_from_compact_to_hausdorff_is_proper {X Y : Type _}
  [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace X] [T2Space Y]
  (f : X → Y) (hf : Continuous f) : IsProperMap f := by sorry
