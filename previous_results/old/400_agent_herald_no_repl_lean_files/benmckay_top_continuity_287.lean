import Mathlib

open Set

/-- We define a convenient notion of a proper map: preimage of every compact set is compact. -/
def is_proper_map {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  ∀ ⦃K : Set Y⦄, IsCompact K → IsCompact (f ⁻¹' K)

/-- Let f : X → Y be continuous with Y Hausdorff. Then f is proper (preimages of compact sets are compact)
    iff every fiber is compact and f is a closed map. -/
theorem is_proper_map_iff_fibers_compact_and_closed {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Continuous f) (hY : T2Space Y) :
  is_proper_map f ↔ (∀ y : Y, IsCompact (f ⁻¹' ({y} : Set Y))) ∧ IsClosedMap f := by
  sorry
