import Mathlib

open Complex

theorem Shakarchi_exercise_1_19c (z : ℂ) (hz : Complex.abs z = 1) (hne : z ≠ 1) :
  Summable (fun n : ℕ => z ^ (n + 1) / (n + 1 : ℂ)) := by sorry
