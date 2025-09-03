import Mathlib

/--
Putnam 1999 B4: Let `f` be a real function with a continuous third derivative
such that `f(x), f'(x), f''(x), f'''(x)` are positive for all `x`.
Suppose that `f'''(x) ≤ f(x)` for all `x`. Show that `f'(x) < 2 f(x)` for all `x`.
-/

theorem putnam_exercise_1999_b4 {f : ℝ → ℝ}
  (hf : ContDiff ℝ 3 f)
  (hpos0 : ∀ x, 0 < f x)
  (hpos1 : ∀ x, 0 < deriv f x)
  (hpos2 : ∀ x, 0 < deriv (deriv f) x)
  (hpos3 : ∀ x, 0 < deriv (deriv (deriv f)) x)
  (h_bound : ∀ x, deriv (deriv (deriv f)) x ≤ f x) :
  ∀ x, deriv f x < 2 * f x := by sorry
