import Mathlib

open TopologicalSpace Set

/-- Suppose that X → Y and Y → Z are covering maps. Prove that the composition X → Z is also a covering map. -/
theorem comp_is_covering_map {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {f : X → Y} {g : Y → Z} (hf : IsCoveringMap f) (hg : IsCoveringMap g) :
  IsCoveringMap (g ∘ f) := by sorry
