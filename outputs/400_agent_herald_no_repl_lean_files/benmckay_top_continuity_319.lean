import Mathlib

/-!
Every proper map f : X → Y to a locally compact Hausdorff space Y is closed.
-/

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [LocallyCompactSpace Y] [T2Space Y]

theorem proper_map_to_locally_compact_hausdorff_is_closed {f : X → Y} (hf : ProperMap f) : IsClosedMap f := by sorry
