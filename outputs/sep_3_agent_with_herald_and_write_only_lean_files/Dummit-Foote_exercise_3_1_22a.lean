import Mathlib

/-- If H and K are normal subgroups of a group G then their intersection H ∩ K is also a normal subgroup of G. -/
theorem Dummit_Foote_exercise_3_1_22a {G : Type _} [Group G] {H K : Subgroup G}
  (hH : H.normal) (hK : K.normal) : (H ⊓ K).normal := by sorry
