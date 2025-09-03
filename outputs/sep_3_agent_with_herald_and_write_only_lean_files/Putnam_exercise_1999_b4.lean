import Mathlib

/-!
Putnam 1999 B4: If f : ℝ → ℝ has continuous third derivative and f, f', f'', f''' > 0 and f''' ≤ f, show f' < 2 f.
-/

open Real

theorem Putnam_exercise_1999_b4 (f : ℝ → ℝ) (hf : ContDiff ℝ 3 f)
  (h_pos : ∀ x, 0 < f x)
  (h_f' : ∀ x, 0 < deriv f x)
  (h_f'' : ∀ x, 0 < deriv (deriv f) x)
  (h_f''' : ∀ x, 0 < deriv (deriv (deriv f)) x)
  (h_bound : ∀ x, deriv (deriv (deriv f)) x ≤ f x) :
  ∀ x, deriv f x < 2 * f x := by sorry
