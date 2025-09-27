import Mathlib

/--
Let f be a real function with a continuous third derivative such that
f(x), f'(x), f''(x), f'''(x) are positive for all x. Suppose that f'''(x) ≤ f(x)
for all x. Show that f'(x) < 2 f(x) for all x.
-/
theorem Putnam_exercise_1999_b4 (f : ℝ → ℝ) (hf : ContDiff ℝ 3 f)
  (h0 : ∀ x, 0 < f x) (h1 : ∀ x, 0 < deriv f x)
  (h2 : ∀ x, 0 < deriv (deriv f) x)
  (h3 : ∀ x, 0 < deriv (deriv (deriv f)) x)
  (hineq : ∀ x, deriv (deriv (deriv f)) x ≤ f x) :
  ∀ x, deriv f x < 2 * f x := by sorry
