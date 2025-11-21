import Mathlib

universe u

variable {X Y Z : Type u}
variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Predicate saying a map is a universal covering map. -/
axiom IsUniversalCovering {A B : Type u} [TopologicalSpace A] [TopologicalSpace B] (f : A → B) : Prop

/-- If pX : X → Y and pZ : Z → Y are universal covering maps, then there is a unique map
    f : X → Z making the triangle commute: pZ ∘ f = pX. -/
theorem universal_covering_unique_up_to_iso
  (pX : X → Y) (pZ : Z → Y)
  (hX : IsUniversalCovering (pX : X → Y)) (hZ : IsUniversalCovering (pZ : Z → Y)) :
  ∃! (f : X → Z), pZ ∘ f = pX := by sorry
