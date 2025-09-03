import Mathlib

/-!
Artin exercise 6.8.1
Show that two elements a, b of a group generate the same subgroup as
b a b^2, b a b^3.
-/

variable {G : Type*} [Group G]

theorem Artin_exercise_6_8_1 (a b : G) :
  Subgroup.closure ({a, b} : Set G) = Subgroup.closure ({b * a * b ^ 2, b * a * b ^ 3} : Set G) := by
  sorry
