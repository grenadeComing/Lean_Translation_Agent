import Mathlib

open Set

/--
Suppose f is a real, three times differentiable function on [-1,1],
such that f(-1)=0, f(0)=0, f(1)=1, f'(0)=0.
Prove that f^{(3)}(x) ≥ 3 for some x ∈ (-1,1).
-/
theorem Rudin_exercise_5_17 {f : ℝ → ℝ}
  (h : ContDiffOn ℝ 3 f (Icc (-1 : ℝ) 1))
  (h_neg1 : f (-1) = 0)
  (h_0 : f 0 = 0)
  (h_1 : f 1 = 1)
  (h'0 : deriv f 0 = 0) :
  ∃ x : ℝ, x ∈ Ioo (-1 : ℝ) 1 ∧ deriv (deriv (deriv f)) x ≥ 3 := by
  sorry
