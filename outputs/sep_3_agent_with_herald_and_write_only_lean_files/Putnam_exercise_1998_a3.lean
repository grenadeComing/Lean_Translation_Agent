import Mathlib

/-- Putnam 1998 A3: If f : ℝ → ℝ has continuous third derivative, then there exists a ∈ ℝ
such that f(a) + f'(a) + f''(a) + f'''(a) = 0. -/
theorem putnam_1998_a3 {f : ℝ → ℝ} (h : ContDiff ℝ 3 f) :
  ∃ a : ℝ, f a + deriv f a + deriv (deriv f) a + deriv (deriv (deriv f)) a = 0 := by sorry
