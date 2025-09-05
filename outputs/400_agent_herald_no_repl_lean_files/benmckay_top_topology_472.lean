/-
If X and Y are topological spaces, prove that X × Y is compact iff X and Y are both compact.
-/

import Mathlib

theorem CompactSpace.prod_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by sorry
