import Mathlib

/- If H is the unique subgroup of a given order in a group G prove H is characteristic in G. -/
theorem Dummit_Foote_exercise_4_4_7 {G : Type*} [Group G] [Fintype G] (H : Subgroup G)
  (uniq : ∀ K : Subgroup G, Fintype.card K = Fintype.card H → K = H) : H.IsCharacteristic := by sorry
