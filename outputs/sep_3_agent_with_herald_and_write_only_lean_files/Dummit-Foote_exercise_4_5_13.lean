import Mathlib

theorem Dummit_Foote_exercise_4_5_13 {G : Type*} [Group G] [Fintype G] (h : Fintype.card G = 56) :
  ∃ (p : ℕ) (hp : Nat.Prime p) (P : Subgroup G),
    p ∣ (56 : ℕ) ∧ P.IsSylow p ∧ P.Normal := by sorry
