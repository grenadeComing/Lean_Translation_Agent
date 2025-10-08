import Mathlib

variable {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable [T2Space X] -- X is Hausdorff
variable (f : X → Y)
variable (IsCoveringMap : (X → Y) → Prop)
variable (hf : IsCoveringMap f)

/-- If f is a covering map and Z is connected, continuous lifts g1 and g2 with f ∘ g1 = f ∘ g2
    that agree at one point must be equal. (We state the covering-map predicate abstractly as
    `IsCoveringMap` because the exact name in Mathlib may differ.) -/
theorem covering_map_lift_unique {g1 g2 : Z → X} (hg1 : Continuous g1) (hg2 : Continuous g2)
  (hcomp : ∀ z, f (g1 z) = f (g2 z)) (z0 : Z) (heq : g1 z0 = g2 z0) (hconn : ConnectedSpace Z) :
  g1 = g2 := by sorry
