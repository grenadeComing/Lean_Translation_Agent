import Mathlib

open Set

/-- Let f : X → Y be a continuous map to a Hausdorff space Y. 
    Then f is proper (preimage of every compact set is compact) iff
    (a) every fiber f ⁻¹' {y} is compact, and
    (b) f is a closed map (images of closed sets are closed). -/
theorem proper_map_iff_compact_fibers_and_closed {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [T2Space Y] {f : X → Y} (hf : Continuous f) :
  (∀ (K : Set Y), IsCompact K → IsCompact (f ⁻¹' K)) ↔
  ((∀ y : Y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ (∀ (s : Set X), IsClosed s → IsClosed (f '' s))) := by
  sorry
