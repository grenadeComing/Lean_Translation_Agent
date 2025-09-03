import Mathlib

/-- A simple definition of irrational used for this exercise: a real x is irrational
if it is not equal to any rational (coerced to reals). -/
def irrational (x : ℝ) : Prop := ∀ q : ℚ, (q : ℝ) ≠ x

theorem Rudin_exercise_1_1a (r : ℚ) (x : ℝ) (hr : r ≠ 0) (hx : irrational x) : irrational (r + x) := by sorry
