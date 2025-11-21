import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

theorem continuous_compact_is_closed_map (f : X → Y) (hX : CompactSpace X) (hf : Continuous f) :
  IsClosedMap f := by sorry
