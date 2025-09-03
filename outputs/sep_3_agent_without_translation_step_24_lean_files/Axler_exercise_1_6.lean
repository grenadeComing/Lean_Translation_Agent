import Mathlib

open Set

/-- Example: the integer lattice Z × Z inside R^2.  -/
def U : Set (ℝ × ℝ) := { p | ∃ (m n : Int), p = (↑m, ↑n) }

theorem Axler_exercise_1_6 :
  U.Nonempty ∧ (∀ a b, a ∈ U → b ∈ U → a + b ∈ U) ∧ (∀ a, a ∈ U → -a ∈ U) ∧
  ¬ (∀ (r : ℝ) (v : ℝ × ℝ), v ∈ U → r • v ∈ U) := by
  sorry
