import Mathlib

variable {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]

/-- Let f : X → Y be a continuous map to a Hausdorff space Y.  Then f is proper
    (preimages of compact sets are compact) iff every fiber is compact and f is a closed map. -/
theorem proper_iff_compact_fibers_and_closed {f : X → Y} (hf : Continuous f) :
  (∀ K : Set Y, IsCompact K → IsCompact (f ⁻¹' K)) ↔
    ((∀ y : Y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ IsClosedMap f) := by sorry
