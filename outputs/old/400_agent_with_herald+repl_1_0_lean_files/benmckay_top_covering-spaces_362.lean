import Mathlib

/-- If f : X → Y is a covering map and X is Hausdorff, then lifts of a map Z → Y are unique on a connected domain.
    More precisely: if g1, g2 : Z → X satisfy f ∘ g1 = f ∘ g2, Z is connected, and they agree at one point,
    then g1 = g2. -/
theorem covering_map_lift_unique {X Y Z : Type*} [TopologicalSpace X] [T2Space X] [TopologicalSpace Y] [TopologicalSpace Z]
  {f : X → Y} (hf : IsCoveringMap f) {g1 g2 : Z → X} (hfg : f ∘ g1 = f ∘ g2) (hconn : ConnectedSpace Z)
  (z0 : Z) (h : g1 z0 = g2 z0) : g1 = g2 := by sorry
