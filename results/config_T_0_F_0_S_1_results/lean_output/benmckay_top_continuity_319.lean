import Mathlib

/-!
Every proper map `f : X → Y` to a locally compact Hausdorff space `Y` is closed.
-/

theorem is_proper_map.to_is_closed_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (hf : IsProperMap f) : IsClosedMap f := by sorry