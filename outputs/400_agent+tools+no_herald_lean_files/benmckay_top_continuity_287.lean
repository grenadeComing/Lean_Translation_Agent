import Mathlib

open Set

/-- Let f : X → Y be a continuous map to a Hausdorff space Y.  -/
theorem proper_iff_compact_fibers_and_closed {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Continuous f) [T2Space Y] :
  IsProperMap f ↔ (∀ y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ IsClosedMap f := by
  sorry
