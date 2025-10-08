import Mathlib

/-!
# Dummit & Foote, exercise 1.1.25
If x^2 = 1 for all x in G, prove G is abelian.
-/

theorem Dummit_Foote_exercise_1_1_25 {G : Type _} [Group G]
  (h : ∀ x : G, x * x = 1) : ∀ a b : G, a * b = b * a := by
  -- proof omitted
  sorry
