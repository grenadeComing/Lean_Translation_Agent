import Mathlib

open Quaternion

/-- There are infinitely many quaternions whose square is -1. -/
theorem Herstein_exercise_4_1_19 : Set.Infinite ({ q : Quaternion ℝ | q * q = -1 }) := by sorry
