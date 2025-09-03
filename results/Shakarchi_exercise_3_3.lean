import Mathlib

open MeasureTheory

theorem Shakarchi_exercise_3_3 (a : ℝ) (ha : 0 < a) :
  ∫ x : ℝ, (Real.cos x) / (x^2 + a^2) ∂volume = π * Real.exp (-a) / a := by
  sorry
