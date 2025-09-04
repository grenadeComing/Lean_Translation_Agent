import Mathlib

open TopologicalSpace

theorem covering_map_fundamental_group_injective {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : IsCoveringMap f) [T2Space X] (x : X) :
  Function.Injective (FundamentalGroup.map f x) := by sorry
