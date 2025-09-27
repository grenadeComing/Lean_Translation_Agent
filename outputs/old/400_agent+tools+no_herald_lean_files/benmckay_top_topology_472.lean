import Mathlib

/-!
# Compactness of product spaces

Statement: If `X` and `Y` are topological spaces, then `X × Y` is compact iff `X` and `Y` are both compact.
-/

open Topology

theorem compact_space_prod_iff {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
    CompactSpace (X × Y) ↔ (CompactSpace X ∧ CompactSpace Y) := by sorry
