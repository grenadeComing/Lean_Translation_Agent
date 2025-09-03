import Mathlib

theorem dummit_foote_exercise_3_4_4 {G : Type _} [CommGroup G] [Fintype G] (n : Nat)
  (hn : n ∣ Fintype.card G) (hnpos : 0 < n) :
  ∃ (H : Subgroup G) (hH : Fintype H), Fintype.card H = n := by sorry
