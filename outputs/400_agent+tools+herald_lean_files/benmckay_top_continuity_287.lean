import Mathlib

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- Let f : X → Y be a continuous map to a Hausdorff space Y.  Then f is proper iff every
fiber f ⁻¹' {y} is compact and f is a closed map. -/
theorem proper_iff_closed_map_and_compact_fibers {f : X → Y} (hf : Continuous f) [T2Space Y] :
  IsProperMap f ↔ (∀ y : Y, IsCompact (f ⁻¹' {y})) ∧ IsClosedMap f := by sorry
