import Mathlib

open Set

theorem Rudin_exercise_5_17 (f : ℝ → ℝ) (hf : ContDiffOn ℝ 3 f (Icc (-1:ℝ) 1))
  (h1 : f (-1) = 0) (h2 : f 0 = 0) (h3 : f 1 = 1) (h4 : deriv f 0 = 0) :
  ∃ x ∈ Ioo (-1:ℝ) 1, deriv (deriv (deriv f)) x ≥ 3 := by
  sorry
