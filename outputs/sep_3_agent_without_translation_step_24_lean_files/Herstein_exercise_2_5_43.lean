import Mathlib

/-!
Herstein, Exercise 2.5.43: A group of order 9 is abelian.
We state the result below. The proof is omitted (sorry) as requested.
-/

theorem Herstein_exercise_2_5_43 (G : Type _) [Group G] [Fintype G] (h : Fintype.card G = 9) : ∀ x y : G, x * y = y * x := by
  sorry
