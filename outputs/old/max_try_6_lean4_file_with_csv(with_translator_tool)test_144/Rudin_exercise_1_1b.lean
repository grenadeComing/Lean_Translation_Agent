import Mathlib

/-- Rudin Ex. 1.1(b): If r is rational (r ≠ 0) and x is irrational, then r * x is irrational.
    Here we express "x is irrational" as ∀ q : ℚ, (q : ℝ) ≠ x. -/
theorem Rudin_exercise_1_1b (r : ℚ) (x : ℝ) (hr : r ≠ 0)
  (hx : ∀ q : ℚ, (q : ℝ) ≠ x) : ∀ q : ℚ, (q : ℝ) ≠ (r : ℝ) * x := by
  sorry
