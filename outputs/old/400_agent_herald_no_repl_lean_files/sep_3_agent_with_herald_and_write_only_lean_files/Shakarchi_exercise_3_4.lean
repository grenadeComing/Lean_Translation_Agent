import Mathlib

open MeasureTheory
open Real

lemma Shakarchi_exercise_3_4 (a : ℝ) (ha : 0 < a) :
  ∫ x : ℝ, (x * sin x) / (x ^ 2 + a ^ 2) = π * exp (-a) := by sorry
