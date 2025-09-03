import Mathlib

/--
Herstein, Exercise 2.5.43: A group of order 9 is abelian.
We state the result and leave the proof as `by sorry`.
-/
theorem Herstein_exercise_2_5_43 (G : Type _) [Group G] [Fintype G] (h : Fintype.card G = 9) :
  ∀ a b : G, a * b = b * a := by sorry
