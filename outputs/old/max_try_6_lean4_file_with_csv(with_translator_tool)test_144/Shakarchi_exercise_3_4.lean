import Mathlib

theorem Shakarchi_exercise_3_4 (a : ℝ) (ha : a > 0) :
  MeasureTheory.integral MeasureTheory.volume (fun x => x * Real.sin x / (x^2 + a^2)) = Real.pi * Real.exp (-a) := by sorry
