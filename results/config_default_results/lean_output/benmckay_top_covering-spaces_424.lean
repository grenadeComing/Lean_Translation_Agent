import Mathlib

/-- The morphism of fundamental groups f_* : π1(X) → π1(Y) induced by a covering map
    f : X → Y on a Hausdorff space X is injective.

    Stated abstractly: given spaces X, Y and a map f : X → Y, assume `IsCoveringMap`
    (that f is a covering) and `T2SpaceX` (that X is Hausdorff). Given types `pi1X`
    and `pi1Y` representing the fundamental groups and a map `f_star : pi1X → pi1Y`
    denoting the map induced by f, the conclusion is that `f_star` is injective. -/
theorem induced_pi1_injective_of_covering_map
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y)
  (IsCoveringMap : Prop) (T2SpaceX : Prop)
  (pi1X pi1Y : Type*)
  (f_star : pi1X → pi1Y) :
  IsCoveringMap → T2SpaceX → Function.Injective f_star := by sorry