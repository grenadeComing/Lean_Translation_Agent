import Mathlib

theorem continuous_bijective_of_compact_t2_homeomorph
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y]
  (f : X → Y) (hf : Continuous f) (hbij : Function.Bijective f) :
  Homeomorph X Y := by
  sorry
