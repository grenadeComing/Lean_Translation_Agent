import Mathlib
open Set Topology

/-- Let Y be a locally compact Hausdorff space and f : X -> Y a closed injection. Prove that f is a homeomorphism onto its image. -/
def isHomeomorph_of_isClosed_injection {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [LocallyCompactSpace Y] [T2Space Y] {f : X → Y}
  (hf : IsClosed (Set.range f)) (hfi : Function.Injective f) :
  X ≃ₜ Subtype (Set.range f) := by
  sorry