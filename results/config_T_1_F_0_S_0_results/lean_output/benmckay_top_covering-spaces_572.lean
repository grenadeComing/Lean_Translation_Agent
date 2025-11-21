import Mathlib

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- Predicate asserting that a map is a universal covering map. (Declared abstractly here.) -/
constant IsUniversalCovering {A B : Type*} [TopologicalSpace A] [TopologicalSpace B] (p : A → B) : Prop

/-- Suppose p : X → Y and q : Z → Y are universal covering maps. Then X and Z are isomorphic
as coverings of Y: there is a unique homeomorphism φ : X ≃ₜ Z with q ∘ φ = p. -/
theorem universal_coverings_unique_iso (p : X → Y) (q : Z → Y)
  (hp : IsUniversalCovering p) (hq : IsUniversalCovering q) :
  ∃! (φ : X ≃ₜ Z), q ∘ φ = p := by sorry
