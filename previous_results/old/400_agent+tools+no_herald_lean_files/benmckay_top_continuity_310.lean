import Mathlib

/-- We define a notion of proper map as one that pulls back compact sets to compact sets. -/
def proper_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  ∀ (K : Set Y), IsCompact K → IsCompact (f ⁻¹' K)

/-- A continuous map from a compact space to a Hausdorff space is proper. -/
theorem continuous_compact_to_t2_is_proper {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y] (f : X → Y) (hf : Continuous f) : proper_map f := by
  -- proof omitted
  sorry
