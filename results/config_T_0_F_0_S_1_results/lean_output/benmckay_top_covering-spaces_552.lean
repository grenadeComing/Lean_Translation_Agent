import Mathlib

theorem is_covering_map_comp {X Y Z : Type _} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
  {p : X → Y} {q : Y → Z} (hp : IsCoveringMap p) (hq : IsCoveringMap q) : IsCoveringMap (q ∘ p) := by sorry
