import Mathlib

/-!
A continuous bijection f : X → Y from a compact space X to a Hausdorff (T2) space Y is a homeomorphism.
-/

theorem continuous_bijective_compact_to_t2_homeomorph {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) (hb : Bijective f) : Homeomorph X Y := by sorry
