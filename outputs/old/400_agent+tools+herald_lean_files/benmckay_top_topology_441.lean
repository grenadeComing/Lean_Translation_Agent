import Mathlib

/-!
# Image of closed sets under continuous maps from compact spaces are closed

This file states the theorem: if `X` is a compact topological space and `f : X → Y` is
continuous, then `f` is a closed map.
-/

theorem continuous_map_from_compact_is_closed {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Continuous f) (hX : CompactSpace X) : IsClosedMap f := by sorry
