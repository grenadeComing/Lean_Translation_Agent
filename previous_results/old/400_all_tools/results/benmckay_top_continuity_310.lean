import Mathlib

/-- If X is compact and Y is Hausdorff, then every continuous map f : X → Y is proper in the sense
that the preimage of every compact set is compact. -/
theorem continuous_from_compact_to_t2_is_proper {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] [CompactSpace X] [T2Space Y] {f : X → Y} (hf : Continuous f) :
  ∀ (K : Set Y), IsCompact K → IsCompact (f ⁻¹' K) := by sorry
