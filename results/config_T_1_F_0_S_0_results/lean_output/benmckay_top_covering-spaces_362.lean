import Mathlib

/-!
Take a covering map f : X → Y from a Hausdorff space X to a topological space Y.
Suppose g1 g2 : Z → X satisfy f (g1 z) = f (g2 z) for all z. If g1 z0 = g2 z0 for some z0,
then g1 = g2.

Note: the statement as written is not true in general (one typically needs Z to be connected).
The theorem below is a direct translation of the given statement.
-/

theorem covering_map_lift_unique_of_eq_at_point
  {X Y Z : Type*} [TopologicalSpace X] [T2Space X] [TopologicalSpace Y] [TopologicalSpace Z]
  {f : X → Y} (hf : IsCoveringMap f) (g1 g2 : Z → X)
  (hcomp : ∀ z : Z, f (g1 z) = f (g2 z)) (z0 : Z) (h0 : g1 z0 = g2 z0) : g1 = g2 := by sorry
