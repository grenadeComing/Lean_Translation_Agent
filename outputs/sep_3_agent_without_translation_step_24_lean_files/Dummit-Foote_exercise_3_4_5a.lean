import Mathlib

/-!
Prove that subgroups of a solvable group are solvable.
This file provides the statement; the proof is omitted (sorry).
-/

theorem subgroup_of_solvable {G : Type _} [Group G] {H : Subgroup G} (h : IsSolvable G) :
  IsSolvable H := by
  sorry
