import Mathlib


/-- Show that a group of order 5 must be abelian.
Save it to: Herstein_exercise_2_1_21.lean -/
theorem group_order_five_is_abelian (G : Type*) [Group G] [Fintype G] (hG : Fintype.card G = 5) :
  CommGroup G := Herstein_exercise_2_1_21.lean