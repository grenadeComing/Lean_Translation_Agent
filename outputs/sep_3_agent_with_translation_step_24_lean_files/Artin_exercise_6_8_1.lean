import Mathlib

/-!
Exercise: Show that for a group G and a,b : G,
  Subgroup.closure ({a, b} : Set G) = Subgroup.closure ({b * a * b^2, b * a * b^3} : Set G).
We only state the theorem here and leave the proof as `by sorry`.
-/

theorem Artin_exercise_6_8_1 {G : Type*} [Group G] (a b : G) :
  Subgroup.closure ({a, b} : Set G) = Subgroup.closure ({b * a * b^2, b * a * b^3} : Set G) := by sorry
