import Mathlib

/-- Putnam 1999 B4.
Let f be a real function with a continuous third derivative such that
f(x), f'(x), f''(x), f'''(x) are positive for all x. Suppose that
f'''(x) ≤ f(x) for all x. Show that f'(x) < 2 f(x) for all x. -/
theorem putnam_1999_b4 (f : ℝ → ℝ)
  (h_cont : ContDiff 3 f)
  (h_pos   : ∀ x, f x > 0)
  (h_pos1  : ∀ x, deriv f x > 0)
  (h_pos2  : ∀ x, deriv (deriv f) x > 0)
  (h_pos3  : ∀ x, deriv (deriv (deriv f)) x > 0)
  (h_bound : ∀ x, deriv (deriv (deriv f)) x ≤ f x) : ∀ x, deriv f x < 2 * f x := by sorry
