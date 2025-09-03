import Mathlib

open Set

theorem Rudin_exercise_5_17 {f : ℝ → ℝ}
  (hf : ContDiffOn ℝ 3 f (Set.Icc (-1 : ℝ) 1))
  (hvals : f (-1) = 0 ∧ f 0 = 0 ∧ f 1 = 1)
  (hder0 : deriv f 0 = 0) :
  ∃ x ∈ Set.Ioo (-1 : ℝ) 1, deriv (deriv (deriv f)) x ≥ 3 := by sorry
