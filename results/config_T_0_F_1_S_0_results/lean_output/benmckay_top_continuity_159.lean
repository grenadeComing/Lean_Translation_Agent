import Mathlib

open Function

def continuous_bijective_from_compact_to_T2_homeomorph {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (hX : CompactSpace X) (hY : T2Space Y) (f : X → Y) (hf_cont : Continuous f) (hf_bij : Function.Bijective f) : Homeomorph X Y := by sorry
