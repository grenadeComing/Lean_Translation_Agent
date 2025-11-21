import Mathlib

/-- If f : X → Y and g : Y → Z are covering maps then g ∘ f : X → Z is a covering map. -/
theorem covering_map_comp {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {f : X → Y} {g : Y → Z} (hf : IsCoveringMap f) (hg : IsCoveringMap g) : IsCoveringMap (g ∘ f) := by sorry
