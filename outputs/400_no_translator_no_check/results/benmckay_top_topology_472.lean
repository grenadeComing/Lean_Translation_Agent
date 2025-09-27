import Mathlib

open TopologicalSpace

variable (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]

theorem compact_space_prod_iff : CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by sorry
