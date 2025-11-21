import Mathlib

theorem equalizer_of_continuous_maps_is_closed {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  (f g : X → Y) (hf : Continuous f) (hg : Continuous g) [T2Space Y] :
  IsClosed ({ x : X | f x = g x }) := by sorry
