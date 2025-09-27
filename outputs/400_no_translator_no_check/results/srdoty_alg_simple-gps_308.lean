import Mathlib

/-!
Galois proved that A5 is simple and that the Galois group of the general
quintic (generic degree-5 polynomial) is S5. From these facts one concludes
that the general quintic is not solvable by radicals because S5 is not a
solvable group.

This file records the straightforward group-theoretic reduction: if a group
G is (group-)isomorphic to S5 and S5 is not solvable, then G is not solvable.
The connection between solvability of the Galois group and solvability by
radicals for polynomials is classical and is not formalized here; we stop
at the group-theoretic statement.
-/

open Equiv

theorem general_quintic_not_solvable_by_radicals
  (G : Type _) [Group G]
  (h : G ≃* Equiv.Perm (Fin 5))
  (hS5_not_solvable : ¬ IsSolvable (Equiv.Perm (Fin 5))) :
  ¬ IsSolvable G := by
  -- The intended proof: solvability is preserved under group isomorphism,
  -- so if S5 is not solvable and G ≃* S5, then G is not solvable.
  sorry
