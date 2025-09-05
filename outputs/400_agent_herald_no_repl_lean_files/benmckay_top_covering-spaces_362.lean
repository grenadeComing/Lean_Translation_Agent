import Mathlib

/--
Corrected statement:
If f : X → Y is a covering map and X is Hausdorff, then two lifts g1, g2 : Z → X of the same map into Y which agree at one point are equal, provided Z is connected.
The original statement omitted the connectedness hypothesis on Z; without it the conclusion can fail.
-/
theorem unique_lift_covering_of_connected {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [TopologicalSpace Z] [T2Space X] {f : X → Y} (hf : IsCoveringMap f) {g1 g2 : Z → X}
  (hfg : f ∘ g1 = f ∘ g2) {z0 : Z} (hz0 : g1 z0 = g2 z0) [ConnectedSpace Z] :
  g1 = g2 := by sorry
