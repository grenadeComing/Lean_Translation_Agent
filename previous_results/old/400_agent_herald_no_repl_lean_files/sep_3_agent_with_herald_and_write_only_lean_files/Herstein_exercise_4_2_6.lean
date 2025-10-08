import Mathlib

/--
If a^2 = 0 in a (possibly noncommutative) ring R, show that ax + xa commutes with a.
-/
variable {R : Type*} [Ring R]

theorem Herstein_exercise_4_2_6 (a x : R) (ha : a * a = 0) :
  a * (a * x + x * a) = (a * x + x * a) * a := by sorry
