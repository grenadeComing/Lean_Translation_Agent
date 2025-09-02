import Mathlib

open Set

theorem munkres_exercise_24_3a (f : ℝ → ℝ)
  (hf : ContinuousOn f (Icc (0 : ℝ) 1))
  (h_range : f '' (Icc (0 : ℝ) 1) ⊆ Icc (0 : ℝ) 1) :
  ∃ x ∈ Icc (0 : ℝ) 1, f x = x := by sorry
