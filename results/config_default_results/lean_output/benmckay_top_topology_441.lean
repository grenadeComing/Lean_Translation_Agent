import Mathlib

/-- Prove that if X is compact and f : X → Y is continuous, then f is closed.
Note: In general this requires Y to be Hausdorff to guarantee that the image of a closed set is closed. -/
theorem closed_map_of_compact_of_continuous
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [CompactSpace X]
  (f : X → Y) (hf : Continuous f) [T2Space Y] : IsClosedMap f := by
  intro s hs
  have hcomp : IsCompact s := hs.isCompact
  have himage : IsCompact (f '' s) := hcomp.image hf
  have hclosed : IsClosed (f '' s) := himage.isClosed
  exact hclosed
