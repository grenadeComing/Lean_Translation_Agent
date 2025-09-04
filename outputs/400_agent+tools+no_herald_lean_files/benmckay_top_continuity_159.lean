import Mathlib

/-- A continuous bijection from a compact space to a Hausdorff (T2) space is a homeomorphism. -/
def continuous_bijective_compact_to_T2_homeomorph {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) (hb : Function.Bijective f) : Homeomorph X Y := by
  sorry
