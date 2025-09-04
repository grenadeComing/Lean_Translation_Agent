import Mathlib
open Set Filter Function
open Topology

/-- A continuous bijection \(f \colon X \to Y\) from a compact space \(X\) to a Hausdorff space \(Y\) is a homeomorphism. -/
def homeomorph_of_continuous_bijective_of_compact_t2 {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] (f : X → Y) (hf : Continuous f) (hb : Bijective f) (hX : CompactSpace X)
    (hY : T2Space Y) : Homeomorph X Y := by sorry
