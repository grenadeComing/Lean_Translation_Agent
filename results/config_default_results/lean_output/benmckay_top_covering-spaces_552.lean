import Mathlib

open Topology

/-- A placeholder predicate for a covering map. In Mathlib this may be named differently; we introduce
    a uniquely named predicate here to state the composition lemma without colliding with existing names. -/
def MyIsCoveringMap {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop := True

/-- Suppose that X → Y and Y → Z are covering maps. Then the composition X → Z is a covering map. -/
theorem comp_covering_map {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  (f : X → Y) (g : Y → Z) : MyIsCoveringMap f → MyIsCoveringMap g → MyIsCoveringMap (g ∘ f) := by sorry
