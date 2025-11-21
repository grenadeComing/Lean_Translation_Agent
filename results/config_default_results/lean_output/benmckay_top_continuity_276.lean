import Mathlib
open Set Filter Topology TopologicalSpace

/-- Let Y be a locally compact Hausdorff space and f : X → Y a closed injection. Prove that f is a homeomorphism onto its image. -/
theorem isHomeomorph_of_isClosedMap_of_t2_of_locallyCompactSpace {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] [T2Space Y] [LocallyCompactSpace Y] {f : X → Y} (h : IsClosedMap f)
    (hf : Function.Injective f) : IsHomeomorph f := by sorry