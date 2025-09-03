import Mathlib

variable {G : Type _} [Group G]

variable (H K : Subgroup G) [Fintype H] [Fintype K]

theorem Dummit_Foote_exercise_3_2_8 (h_coprime : Nat.Coprime (Fintype.card H) (Fintype.card K)) :
  (H ⊓ K : Subgroup G) = ⊥ := by sorry
