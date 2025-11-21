import Mathlib

lemma compact_space_prod_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by sorry