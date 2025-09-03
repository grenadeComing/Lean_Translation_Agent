import Mathlib

/-!
Deduce that |a b| = |b a| for all a, b in a group G.
This file states the lemma; proof omitted.
-/

theorem Dummit_Foote_exercise_1_1_22b {G : Type _} [Group G] (a b : G) :
  orderOf (a * b) = orderOf (b * a) := by sorry
