import Mathlib

def benmckay_top_continuity_159 {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) (hf_bij : Function.Bijective f) :
  Homeomorph X Y := by sorry
