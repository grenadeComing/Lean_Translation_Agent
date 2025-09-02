import Mathlib

lemma Shakarchi_exercise_3_4 (a : ℝ) (ha : 0 < a) :
  ∫ x : ℝ, (x * Real.sin x) / (x ^ 2 + a ^ 2) = Real.pi * Real.exp (-a) := by sorry
