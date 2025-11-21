import Mathlib

variable {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/--
If f : X → Y is a covering map (with X Hausdorff) and g1,g2 : Z → X satisfy f ∘ g1 = f ∘ g2,
then any agreement g1 z0 = g2 z0 on a point z0 of a connected space Z implies g1 = g2.
Note: the hypothesis that Z is connected is necessary for the conclusion; without it lifts may
agree at a point but differ on other connected components.
-/
theorem covering_map_lift_unique {f : X → Y} (hf : IsCoveringMap f) (hX : IsHausdorff X)
  {g1 g2 : Z → X} (hcomp : f ∘ g1 = f ∘ g2) (z0 : Z) (h0 : g1 z0 = g2 z0)
  [ConnectedSpace Z] : g1 = g2 := by sorry