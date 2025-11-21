import Mathlib

/-- Every continuous map f : X → Y from a compact space X to a Hausdorff space Y is proper. -/
theorem isProperMap_of_compact_space_of_t2 (X : Type _) (Y : Type _) [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] (f : X → Y) (hf : Continuous f) : IsProperMap f := by sorry
