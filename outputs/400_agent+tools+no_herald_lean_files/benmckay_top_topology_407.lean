import Mathlib

open Topology

theorem final_T2_iff_closed_relation (X Y : Type*) (tX : TopologicalSpace X) (P : X → Y) :
  @T2Space Y (TopologicalSpace.coinduced P tX) ↔ IsClosed (setOf fun p : X × X => P p.1 = P p.2 : Set (X × X)) :=
by sorry
