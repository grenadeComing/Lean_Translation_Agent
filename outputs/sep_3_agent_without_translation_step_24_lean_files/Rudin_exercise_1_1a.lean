import Mathlib

/-- If r is rational (r ≠ 0) and x is irrational, then r + x is irrational. -/
theorem Rudin_exercise_1_1a (r x : ℝ) (hr : ∃ q : Rat, r = (q : ℝ)) (hrnz : r ≠ 0) (hx : Irrational x) : Irrational (r + x) := by
  sorry
