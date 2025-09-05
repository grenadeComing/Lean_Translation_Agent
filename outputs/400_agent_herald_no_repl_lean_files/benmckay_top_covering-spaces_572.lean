import Mathlib

open Topology

variable {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

variable (pX : X → Y) (pZ : Z → Y)

-- Assume both maps are covering maps and universal covers
variable [IsCoveringMap pX] [IsCoveringMap pZ]
variable [IsUniversalCover pX] [IsUniversalCover pZ]

/-- If X → Y and Z → Y are universal covering maps, then X and Z are isomorphic as coverings
    of Y: there is a unique map X → Z making the triangle with the projections commute. -/
theorem universal_cover_unique_lift :
  ∃! (φ : X → Z), Continuous φ ∧ pZ ∘ φ = pX := by sorry
