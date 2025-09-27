import Mathlib

/-!
Exercise (Dummit & Foote 4.5.14):
Show that a group of order 312 has a normal Sylow p-subgroup for some prime p dividing its order.
312 = 2^3 * 3 * 13.
-/

theorem Dummit_Foote_exercise_4_5_14 {G : Type*} [Group G] [Fintype G]
  (h : Fintype.card G = 312) :
  ∃ (p : ℕ), p.Prime ∧ p ∣ Fintype.card G ∧ ∃ (P : Subgroup G), IsSylow p P ∧ P.Normal := by sorry
