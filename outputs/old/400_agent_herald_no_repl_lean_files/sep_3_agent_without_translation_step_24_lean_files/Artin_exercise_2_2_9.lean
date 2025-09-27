import Mathlib

theorem Artin_exercise_2_2_9 {G : Type _} [Group G] (a b : G) (hab : a * b = b * a) :
  ∀ x y : Subgroup.closure ({a, b} : Set G), (x : G) * (y : G) = (y : G) * (x : G) := by
  sorry
