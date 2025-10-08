import Mathlib

open Set

/-- Suppose a ∈ ℝ, f is twice-differentiable on (a, ∞), and M0, M1, M2 are bounds for |f|, |f'|, |f''| on (a, ∞).
    Then M1^2 ≤ 4 * M0 * M2. -/
theorem Rudin_exercise_5_15 (a : ℝ) (f : ℝ → ℝ)
  (h : ContDiffOn ℝ 2 f (Ioi a))
  (M0 M1 M2 : ℝ)
  (h0 : ∀ x, a < x → |f x| ≤ M0)
  (h1 : ∀ x, a < x → |deriv f x| ≤ M1)
  (h2 : ∀ x, a < x → |deriv (deriv f) x| ≤ M2) :
  M1 ^ 2 ≤ 4 * M0 * M2 := by sorry
