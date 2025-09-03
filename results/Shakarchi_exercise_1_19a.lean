import Mathlib

theorem Shakarchi_exercise_1_19a (z : Complex) (hz : Complex.abs z = 1) :
  ¬ Summable fun n : ℕ => (n : Complex) * z ^ n := by sorry
