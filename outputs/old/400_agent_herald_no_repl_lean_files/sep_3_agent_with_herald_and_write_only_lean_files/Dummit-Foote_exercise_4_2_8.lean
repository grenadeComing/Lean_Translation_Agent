import Mathlib

open Subgroup

/-- If H has finite index n then there is a normal subgroup K of G with K ≤ H and |G : K| ≤ n!. -/
theorem Dummit_Foote_exercise_4_2_8 {G : Type*} [Group G] (H : Subgroup G) (n : Nat)
  (h : H.index = n) :
  ∃ K : Subgroup G, K.normal ∧ K ≤ H ∧ K.index ≤ n! := by sorry
