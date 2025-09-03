import Mathlib

variable {R : Type _} [Ring R]

/-- If a^2 = 0 in R, then a(xa + ax) commutes with a. -/
theorem herstein_exercise_4_2_6 (a x : R) (ha : a * a = 0) : a * (a * x + x * a) = (a * x + x * a) * a := by sorry
