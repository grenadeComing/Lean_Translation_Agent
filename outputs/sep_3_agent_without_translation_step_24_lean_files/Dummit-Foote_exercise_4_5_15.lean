import Mathlib

/-!
Exercise: Prove that a group of order 351 has a normal Sylow p-subgroup for some prime p dividing its order.
We state a version asserting the existence of a unique (hence normal) subgroup of order 13.
-/

theorem Dummit_Foote_exercise_4_5_15 (G : Type*) [Group G] [Finite G] (h : Nat.card (G) = 351) :
  ∃ K : Subgroup G, Nat.card (↥K) = 13 ∧ ∀ H : Subgroup G, Nat.card (↥H) = 13 → H = K := by sorry
