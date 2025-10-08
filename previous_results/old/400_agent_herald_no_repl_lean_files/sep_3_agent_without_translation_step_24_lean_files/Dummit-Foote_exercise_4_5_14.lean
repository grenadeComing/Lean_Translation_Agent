import Mathlib

open Subgroup

/-- Dummit & Foote, Ex. 4.5.14:
    Any group of order 312 = 2^3 * 3 * 13 has a normal Sylow p-subgroup for some prime p dividing its order.
    In fact the Sylow 13-subgroup is unique (hence normal).
-/
theorem Dummit_Foote_exercise_4_5_14 {G : Type _} [Group G] [Finite G] (h : Nat.card G = 312) :
  ∃ H : Subgroup G, Nat.card (↥H) = 13 ∧ Subgroup.Normal H := by sorry
