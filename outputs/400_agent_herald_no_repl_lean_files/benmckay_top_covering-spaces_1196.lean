import Mathlib

/-!
# Long exact sequence of homotopy groups for a Serre fibration

This file states the classical result that a Serre fibration `f : X → Y` induces a long
exact sequence of homotopy groups of the fibre, the total space and the base.

We only give the statement; the proof is omitted (``sorry'').
-/

open Topology

theorem IsSerreFibration.long_exact_sequence_homotopy_groups {X Y : Type _}
  [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : IsSerreFibration f) (x0 : X) :
  -- `fiber f (f x0)` denotes the fibre of `f` over `f x0`, and `π n Z z` denotes the n-th homotopy group
  -- based at `z`. We assert these fit into a long exact sequence
  LongExact (fun n => π n (fiber f (f x0)) x0) (fun n => π n X x0) (fun n => π n Y (f x0)) := by sorry
