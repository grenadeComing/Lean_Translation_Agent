import Mathlib

/-
Suppose that X → Y and Y → Z are covering maps. Prove that the composition X → Z is also a covering map.
-/

theorem IsCoveringMap.comp {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {f : X → Y} {g : Y → Z} (hf : IsCoveringMap f) (hg : IsCoveringMap g) : IsCoveringMap (g ∘ f) := by
  sorry
