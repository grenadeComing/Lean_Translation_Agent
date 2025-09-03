import Mathlib

/-- The set of condensation points of E: those x for which every open ball around x
    contains uncountably many points of E. -/
def condensation_points {k : Nat} (E : Set (Fin k → ℝ)) : Set (Fin k → ℝ) :=
  { x | ∀ ε > 0, ¬ Set.Countable (E ∩ Metric.ball x ε) }

/-- Rudin, Principles of Mathematical Analysis, exercise 2.27(b):
    If E ⊆ ℝ^k is uncountable and P is the set of condensation points of E,
    then at most countably many points of E are not in P. -/
theorem Rudin_exercise_2_27b {k : Nat} (E : Set (Fin k → ℝ)) (h : ¬ Set.Countable E) :
  Set.Countable (E \ condensation_points (E : Set (Fin k → ℝ))) := by
  sorry
