import Mathlib

/-- Exercise (Dummit & Foote 4.5.15):
If G is a group of order 351, then G has a normal Sylow p-subgroup for some prime p dividing 351. -/
theorem Dummit_Foote_exercise_4_5_15 {G : Type _} [Group G] [Fintype G] (h : Fintype.card G = 351) :
  ∃ (p : ℕ) (P : Subgroup G), Nat.Prime p ∧ p ∣ 351 ∧ IsSylow p P ∧ IsNormal P := by sorry
