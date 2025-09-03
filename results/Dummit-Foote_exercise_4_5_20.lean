import Mathlib

/-- Exercise 4.5.20 (Dummit & Foote).
If |G| = 1365 then G is not simple. We only state the lemma; the proof is omitted.
-/
theorem exercise_4_5_20 {G : Type*} [Group G] [Fintype G] (h_card : Fintype.card G = 1365) : ¬ IsSimpleGroup G := by sorry
