import Mathlib

/-- Dummy predicate for covering map. In mathlib4 this would be a proper definition; here
we use a placeholder so we can state the lemma and check it compiles. -/
def is_covering_map {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop := True

/-- Let f : X → Y be a covering map from a Hausdorff space X to a topological space Y.
Suppose g1, g2 : Z → X satisfy f ∘ g1 = f ∘ g2. If g1 z0 = g2 z0 for some z0 : Z then g1 = g2. -/
theorem eq_of_covering_map_comp_eq {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  [T2Space X] {f : X → Y} (hf : is_covering_map f) {g1 g2 : Z → X} (hcomp : f ∘ g1 = f ∘ g2) {z0 : Z}
  (h_at : g1 z0 = g2 z0) : g1 = g2 := by sorry
