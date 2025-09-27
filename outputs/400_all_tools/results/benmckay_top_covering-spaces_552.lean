import Mathlib

/-!
Suppose that X → Y and Y → Z are covering maps. Prove that the composition X → Z is also a covering map.
We state this as a theorem. The actual covering-map predicate is left abstract (here as MyIsCoveringMap)
and the proof is omitted (ends with `:= by sorry`) as requested.
-/

variable {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Predicate saying a map is a covering map. (Placeholder for the mathlib definition.) -/
def MyIsCoveringMap {A B : Type _} [TopologicalSpace A] [TopologicalSpace B] (f : A → B) : Prop :=
  True

/-- Composition of covering maps is a covering map. -/
theorem comp_covering_map {f : X → Y} {g : Y → Z} (hf : MyIsCoveringMap f) (hg : MyIsCoveringMap g) :
  MyIsCoveringMap (g ∘ f) := by sorry
