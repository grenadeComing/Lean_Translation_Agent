import Mathlib

/-!
Rudin exercise translation:
Find c and r such that |x-a| = 2|x-b| iff |x-c| = r, and show 3c = 4b - a, 3r = 2|b-a|.
This file states the result for R^k (modeled as EuclideanSpace) and leaves the proof as `sorry`.
-/

open Real

theorem Rudin_exercise_1_19 (k : ℕ) {a b : EuclideanSpace ℝ (Fin k)} (hab : a ≠ b) :
  ∃ c : EuclideanSpace ℝ (Fin k), ∃ r : ℝ, r > 0 ∧ (∀ x : EuclideanSpace ℝ (Fin k), ‖x - a‖ = 2 * ‖x - b‖ ↔ ‖x - c‖ = r) ∧
    (3 : ℝ) • c = (4 : ℝ) • b - a ∧ 3 * r = 2 * ‖b - a‖ := by
  sorry
