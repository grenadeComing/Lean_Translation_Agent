import Mathlib

/-- Rudin Chapter 1, Exercise 19: In R^k (represented as `Fin k → ℝ`) the locus of points x
    satisfying |x - a| = 2 |x - b| is a sphere. We state existence of its center `c` and radius `r`,
    and the relations 3 • c = 4 • b - a and 3 * r = 2 * ‖b - a‖. -/
theorem Rudin_exercise_1_19 {k : ℕ} (a b : Fin k → ℝ) :
  ∃ (c : Fin k → ℝ) (r : ℝ), r > 0 ∧
    (∀ x : Fin k → ℝ, dist x a = 2 * dist x b ↔ dist x c = r) ∧
    3 • c = 4 • b - a ∧
    3 * r = 2 * ‖b - a‖ := by
  sorry
