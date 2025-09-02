import Mathlib

open Set

/-- Rudin, Principle of Mathematical Analysis exercise 5.17 (statement only).
Suppose f : ℝ → ℝ is three times continuously differentiable on [-1,1],
with f(-1)=0, f(0)=0, f(1)=1, and f'(0)=0. Then there exists x in (-1,1)
with f^{(3)}(x) ≥ 3. -/
theorem Rudin_exercise_5_17 {f : ℝ → ℝ}
  (h : ContDiffOn ℝ 3 f (Icc (-1 : ℝ) (1 : ℝ)))
  (h_neg1 : f (-1 : ℝ) = 0)
  (h_0 : f 0 = 0)
  (h_pos1 : f (1 : ℝ) = 1)
  (h_deriv0 : deriv f 0 = 0) :
  ∃ x ∈ Ioo (-1 : ℝ) (1 : ℝ), deriv (deriv (deriv f)) x ≥ 3 := by sorry
