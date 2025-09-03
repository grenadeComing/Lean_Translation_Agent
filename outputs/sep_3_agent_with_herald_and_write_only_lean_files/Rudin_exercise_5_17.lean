import Mathlib

/-
Exercise (Rudin 5.17, informal):
Suppose f is a real, three times differentiable function on [-1,1],
such that f(-1) = 0, f(0) = 0, f(1) = 1, f'(0) = 0.
Prove that f^{(3)}(x) ≥ 3 for some x ∈ (-1,1).

This file contains only a formal statement (no proof):
-/

theorem Rudin_exercise_5_17 {f : ℝ → ℝ}
  (h_cont : ContDiffOn ℝ 3 f (Set.Icc (-1:ℝ) 1))
  (h_left : f (-1) = 0)
  (h_zero : f 0 = 0)
  (h_right : f 1 = 1)
  (h_deriv0 : deriv f 0 = 0) :
  ∃ x ∈ Set.Ioo (-1:ℝ) 1, deriv (deriv (deriv f)) x ≥ 3 := by
  sorry
