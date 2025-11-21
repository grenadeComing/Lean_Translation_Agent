import Mathlib

/-- A continuous bijection f : X → Y from a compact space X to a Hausdorff space Y is a homeomorphism. -/
theorem continuous_bijective_compact_to_t2_homeomorph {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf_cont : Continuous f) (hf_bij : Bijective f) :
  IsHomeomorph f := by sorry