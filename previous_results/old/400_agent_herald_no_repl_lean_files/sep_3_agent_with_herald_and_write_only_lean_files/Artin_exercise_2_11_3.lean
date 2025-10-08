import Mathlib

/- Exercise (Artin 2.11.3): A group of even order contains an element of order 2. -/

theorem Artin_exercise_2_11_3 {G : Type*} [Group G] [Fintype G] (h : 2 ∣ Fintype.card G) :
  ∃ g : G, g ≠ 1 ∧ g ^ 2 = 1 := by sorry
