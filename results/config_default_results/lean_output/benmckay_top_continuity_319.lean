import Mathlib
open Filter Topology Function Set
open Prod (fst snd)

/-- Every proper map f : X → Y to a locally compact Hausdorff space Y is a closed map. -/
theorem isClosedMap_of_proper_of_t2 {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    [LocallyCompactSpace Y] [T2Space Y] {f : X → Y} (h : IsProperMap f) : IsClosedMap f := by sorry
