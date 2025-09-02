import Mathlib

/-- Putnam 1999 B4: If f : ℝ → ℝ has a continuous third derivative and f, f', f'', f''' are positive
for all x, and f'''(x) ≤ f(x) for all x, then f'(x) < 2 f(x) for all x. -/
theorem putnam_exercise_1999_b4 (f : ℝ → ℝ)
  (h_pos : ∀ x, 0 < f x)
  (h_pos' : ∀ x, 0 < deriv f x)
  (h_pos'' : ∀ x, 0 < deriv (deriv f) x)
  (h_pos''' : ∀ x, 0 < deriv (deriv (deriv f)) x)
  (h_le : ∀ x, deriv (deriv (deriv f)) x ≤ f x) :
  ∀ x, deriv f x < 2 * f x := by sorry
