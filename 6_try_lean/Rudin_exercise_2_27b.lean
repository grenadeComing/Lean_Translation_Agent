import Mathlib

open Metric

/-- Rudin Ex. 2.27(b): Let E ⊆ ℝ^k be uncountable and let P be the set of condensation points of E.
    Then at most countably many points of E are not in P; equivalently E \ P is countable. -/
theorem Rudin_exercise_2_27b {k : ℕ} {E : Set (Fin k → ℝ)} (hE : ¬ Set.Countable E) :
  Set.Countable (E \ { x | ∀ r, 0 < r → ¬ Set.Countable (E ∩ Metric.ball x r) }) := by sorry
