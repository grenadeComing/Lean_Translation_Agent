import Mathlib

variables {X Z Y : Type*} [TopologicalSpace X] [TopologicalSpace Z] [TopologicalSpace Y]

/-- A predicate asserting that a map is a covering map. -/
class IsCoveringMap (f : X → Y) : Prop

/-- A predicate asserting that a covering map is universal (i.e. a simply connected covering). -/
class IsUniversalCoveringMap (f : X → Y) : Prop

/-- If p : X → Y and q : Z → Y are universal covering maps, then X and Z are isomorphic as coverings
    of Y. In particular there is a unique homeomorphism f : X ≃ₜ Z such that q ∘ f = p. -/
theorem universal_covering_maps_iso_over_y (p : X → Y) (q : Z → Y)
  (hp : IsUniversalCoveringMap p) (hq : IsUniversalCoveringMap q) :
  ∃! (f : Homeomorph X Z), q ∘ (f : X → Z) = p := by sorry