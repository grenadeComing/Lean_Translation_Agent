import Mathlib

universe u v w

/-- A predicate saying a map is a covering map. We leave this abstract here;
    a concrete definition can be provided later. -/
class IsCoveringMapCore {X : Type u} {Y : Type v} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) : Prop

/-- If f : X → Y and g : Y → Z are covering maps, then the composition g ∘ f : X → Z
    is also a covering map. -/
theorem covering_map_comp {X : Type u} {Y : Type v} {Z : Type w}
  [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {f : X → Y} {g : Y → Z}
  (hf : IsCoveringMapCore f) (hg : IsCoveringMapCore g) : IsCoveringMapCore (g ∘ f) := by sorry
