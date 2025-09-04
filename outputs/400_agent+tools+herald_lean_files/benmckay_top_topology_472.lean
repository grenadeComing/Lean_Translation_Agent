import Mathlib
open Topology TopologicalSpace Set Filter Function
open Additive Multiplicative
open OrderDual

/-- If X and Y are topological spaces, prove that X × Y is compact if and only if X and Y are both compact. -/
theorem compactSpace_prod_iff {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] :
    CompactSpace (X × Y) ↔ CompactSpace X ∧ CompactSpace Y := by sorry
