import Mathlib

/-- If H and K are finite subgroups of G whose orders are relatively prime then H ∩ K = 1. -/
theorem Dummit_Foote_exercise_3_2_8 {G : Type*} [Group G] {H K : Subgroup G}
  [Fintype H] [Fintype K] (coprime : Nat.Coprime (Fintype.card H) (Fintype.card K)) :
  (H ⊓ K) = ⊥ := by sorry
