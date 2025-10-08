import Mathlib

/-- A continuous bijection f : X → Y from a compact space X to a Hausdorff space Y is a homeomorphism. -/
noncomputable def homeomorph_of_bijective_continuous_of_compact_t2 {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Function.Bijective f)
  (hfc : Continuous f) : X ≃ₜ Y := by sorry
