import Mathlib

/--
If |G| = 1365 = 3 * 5 * 7 * 13 then G is not simple.
This file states the result; the proof is omitted (:= by sorry).
-/

theorem Dummit_Foote_exercise_4_5_20 {G : Type*} [Group G] [Fintype G]
  (h : Fintype.card G = 1365) : ¬ SimpleGroup G := by sorry
