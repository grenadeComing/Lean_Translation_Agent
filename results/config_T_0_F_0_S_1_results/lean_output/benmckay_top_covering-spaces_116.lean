import Mathlib

/-!
# Proper local diffeomorphisms are covering maps

We state the classical topological version used for manifolds:
A proper local homeomorphism f : P → Q with Q connected is a covering map.
(For smooth manifolds this applies to any proper local diffeomorphism.)

This file only contains the statement (no proof).
-/

open Topology

variables {P Q : Type*} [TopologicalSpace P] [TopologicalSpace Q]

/-- If `f` is a proper local homeomorphism and the target is connected, then `f` is a covering map.

For smooth manifolds (without boundary) a local diffeomorphism is in particular a local
homeomorphism, so the same conclusion holds for proper local diffeomorphisms between
connected-manifold targets.
-/
theorem proper_local_homeomorph_is_covering
  (f : P → Q)
  (hf_loc : IsLocalHomeomorph f)
  (hf_prop : IsProperMap f)
  (hq_conn : Connected Q) :
  IsCoveringMap f := by sorry
