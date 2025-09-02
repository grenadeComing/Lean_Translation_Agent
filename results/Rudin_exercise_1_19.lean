import Mathlib

/-- Rudin Exercise 1.19 (translation).

Suppose a, b ∈ ℝ^k. Find c ∈ ℝ^k and r > 0 such that
  ‖x - a‖ = 2 ‖x - b‖  ↔  ‖x - c‖ = r
for all x. Prove that 3c = 4b - a and 3r = 2 ‖b - a‖.

This file contains only the statement (no proof): the theorem ends with `:= by sorry`.
-/

theorem Rudin_exercise_1_19 (k : ℕ) (a b : Fin k → ℝ) :
  ∃ (c : Fin k → ℝ) (r : ℝ), 0 < r ∧ (∀ x : Fin k → ℝ, ‖x - a‖ = 2 * ‖x - b‖ ↔ ‖x - c‖ = r)
    ∧ ((3 : ℝ) • c = (4 : ℝ) • b - a) ∧ (3 * r = 2 * ‖b - a‖) := by sorry
