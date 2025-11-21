import Mathlib

/--
If f : X → Y is a covering map and X is Hausdorff (T2), then the induced map on fundamental
groups (based at x0 and f x0) is injective.
-/
theorem covering_map.pi1_map_injective {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (x0 : X) (hf : IsCoveringMap f) (hX : T2Space X) :
  Function.Injective (FundamentalGroup.map f x0) := by sorry
