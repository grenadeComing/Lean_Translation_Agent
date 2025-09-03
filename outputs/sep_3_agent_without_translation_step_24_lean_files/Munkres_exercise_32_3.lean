/-
Every locally compact Hausdorff space is regular.
Exercise 32.3 from Munkres.
-/

import Mathlib

open Topology

theorem locally_compact_t2_implies_t3 {X : Type*} [TopologicalSpace X] [LocallyCompactSpace X]
  [T2Space X] : T3Space X := by sorry
