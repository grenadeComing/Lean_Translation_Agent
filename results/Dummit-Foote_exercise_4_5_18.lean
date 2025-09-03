import Mathlib

theorem Dummit_Foote_exercise_4_5_18 {G : Type*} [Group G] [Fintype G] (h : Fintype.card G = 200) :
  ∃ P : Sylow 5 G, ∀ g x, x ∈ (P : Subgroup G) → g * x * g⁻¹ ∈ (P : Subgroup G) := by sorry
