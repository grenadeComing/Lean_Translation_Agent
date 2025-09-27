import Mathlib

open Topology

theorem path_concat_defined_iff {X : Type*} [TopologicalSpace X] {p q r s t u : X}
  (x : Path p q) (y : Path r s) (z : Path t u) :
  (q = r ∧ s = t) ↔ (s = t ∧ q = r) := by sorry
