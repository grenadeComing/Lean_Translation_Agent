import Mathlib
open Finset

/-- Prove that a group of even order contains an element of order $2 .$ Save it to: Artin_exercise_2_11_3.lean -/
theorem exists_order_two_in_even_group (G : Type*) [Group G] [Fintype G] (hG : Even (Fintype.card G)) :
    ∃ g : G, orderOf g = 2 := by sorry
