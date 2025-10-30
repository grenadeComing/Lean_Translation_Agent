import Mathlib

/--
Prove that every continuous map f : X → Y from a compact space X to a Hausdorff space Y is proper.
-/

/-- A simple, explicit definition of properness for a map f : X → Y as a predicate on f. -/
def is_proper {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  ∀ s : Set Y, IsCompact s → IsCompact (f ⁻¹' s)

lemma continuous_proper_of_compact_domain
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  [CompactSpace X] [T2Space Y]
  (f : X → Y) (hf : Continuous f) : is_proper f := by sorry
