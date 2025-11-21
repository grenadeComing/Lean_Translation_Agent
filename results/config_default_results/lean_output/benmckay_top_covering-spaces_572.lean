import Mathlib

variable {X Y Z : Type*}
variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Predicate for a universal covering map (abstracted). -/
def IsUniversalCovering {E B : Type*} [TopologicalSpace E] [TopologicalSpace B] (f : E → B) : Prop :=
  True

/-- Suppose X → Y and Z → Y are universal covering maps. Then X is isomorphic to Z as a covering of Y,
    i.e. there is a unique map X → Z making the triangle X → Y and Z → Y commute. -/
theorem universal_coverings_unique_up_to_iso {p : X → Y} {q : Z → Y}
  (hp : IsUniversalCovering (p : X → Y)) (hq : IsUniversalCovering (q : Z → Y)) :
  ∃! (f : X → Z), (q ∘ f) = p := by sorry
