import Mathlib

/-!
Herstein, Exercise 4.2.6
If a^2 = 0 in R, show that ax + xa commutes with a.
-/

theorem herstein_exercise_4_2_6 {R : Type _} [Ring R] (a x : R) (h : a * a = 0) :
  a * (a * x + x * a) = (a * x + x * a) * a := by sorry
