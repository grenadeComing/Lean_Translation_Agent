import Mathlib

/-!
Exercise: If H and K are finite subgroups of G whose orders are relatively prime,
prove that H ∩ K = 1 (the trivial subgroup).
-/

open Subgroup

variable {G : Type*} [Group G]

theorem Dummit_Foote_exercise_3_2_8 (H K : Subgroup G)
  [Fintype H] [Fintype K]
  (h_coprime : Nat.Coprime (Fintype.card H) (Fintype.card K)) :
  H ⊓ K = ⊥ := by sorry
