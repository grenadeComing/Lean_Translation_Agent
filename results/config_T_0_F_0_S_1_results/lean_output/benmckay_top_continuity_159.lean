import Mathlib

/-- A continuous bijection from a compact space to a Hausdorff space is a homeomorphism. -/
theorem continuous_bijective_compact_to_t2_homeomorph (X Y : Type _) [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) (hbij : Function.Bijective f) : Homeomorph X Y := by sorry