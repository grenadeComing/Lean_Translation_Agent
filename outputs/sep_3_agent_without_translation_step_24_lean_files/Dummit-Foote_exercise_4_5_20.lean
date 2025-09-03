import Mathlib

/-
Exercise: Prove that if |G| = 1365 then G is not simple.
This file only states the result; the proof is omitted ("sorry").
-/

theorem Dummit_Foote_exercise_4_5_20 {G : Type*} [Group G] [Fintype G]
  (h : Fintype.card G = 1365) : ¬ IsSimpleGroup G := by
  -- proof omitted
  sorry
