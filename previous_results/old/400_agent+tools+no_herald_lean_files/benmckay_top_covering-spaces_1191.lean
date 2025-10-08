import Mathlib

/-!
Prove that every contractible space is connected and has trivial homotopy groups.
This file gives two statements (without full proofs):
- a contractible topological space is connected,
- for any indexing type `N` and basepoint `x`, the homotopy group `HomotopyGroup N X x` is a subsingleton.

We end each statement with `:= by sorry` as requested.
-/

universe u v

open Topology

theorem ContractibleSpace.connected {X : Type u} [TopologicalSpace X] (h : ContractibleSpace X) : ConnectedSpace X := by
  -- proof omitted
  sorry

theorem ContractibleSpace.homotopy_groups_subsingleton {X : Type u} [TopologicalSpace X] {x : X}
    (h : ContractibleSpace X) (N : Type v) : Subsingleton (HomotopyGroup N X x) := by
  -- proof omitted
  sorry
