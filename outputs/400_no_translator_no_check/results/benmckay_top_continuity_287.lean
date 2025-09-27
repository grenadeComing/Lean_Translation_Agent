import Mathlib

open Set

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]

/-- Let f : X → Y be a continuous map to a Hausdorff space Y.  Then f is proper
    iff every fiber is compact and f is a closed map. -/
theorem proper_iff_fibers_compact_and_closed (f : X → Y) (hf : Continuous f) (hY : T2Space Y) :
  IsProperMap f ↔ (∀ y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ IsClosedMap f := by sorry
