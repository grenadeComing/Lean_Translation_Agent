import Mathlib

-- Herstein Ex. 5.3.10: cos 1° is algebraic over Q.
-- We express 1° as pi / 180 radians.

theorem Herstein_exercise_5_3_10 : IsAlgebraic ℚ (Real.cos (Real.pi / 180) : ℝ) := by sorry