import Mathlib

/--
Take a covering map f : X → Y from a Hausdorff space X to a topological space Y.
Suppose that a map g1 : Z → X and a map g2 : Z → X satisfy f (g1 z) = f (g2 z) for every z.
If g1 z0 = g2 z0 for some z0, then g1 = g2.
(This statement is the direct translation of the user request; it is generally false without
additional hypotheses such as connectedness of the domain Z.)
-/
theorem benmckay_top_covering_spaces_362 {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  (f : X → Y) (hf : IsCoveringMap f) (hX : T2Space X)
  (g1 g2 : Z → X) (hfg : f ∘ g1 = f ∘ g2) {z0 : Z} (h0 : g1 z0 = g2 z0) :
  g1 = g2 := by sorry
