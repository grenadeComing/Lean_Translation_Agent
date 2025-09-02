import Mathlib

variable {R : Type _} [Ring R]

/-- Exercise (Artin 10.1.13): If x is nilpotent then 1 + x is a unit. -/
theorem Artin_exercise_10_1_13 (x : R) (h : ∃ n : ℕ, 0 < n ∧ x ^ n = 0) : IsUnit (1 + x) := by sorry
