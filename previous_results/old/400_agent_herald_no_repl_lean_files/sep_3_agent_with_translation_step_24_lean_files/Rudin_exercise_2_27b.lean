import Mathlib

open Set Metric

/-- A point x is a condensation point of E if every neighborhood of x contains uncountably many points of E.
    We express "uncountably many" as "not `Set.Countable`" in Mathlib. -/
def is_condensation_point {k : ℕ} (E : Set (Fin k → ℝ)) (x : Fin k → ℝ) : Prop :=
  ∀ ε > (0 : ℝ), ¬ Set.Countable (E ∩ Metric.ball x ε)

/-- The set of condensation points of E. -/
def condensation_points {k : ℕ} (E : Set (Fin k → ℝ)) : Set (Fin k → ℝ) :=
  { x | is_condensation_point E x }

/-- Rudin, Principles of Mathematical Analysis, Exercise 2.27(b):
    If E ⊆ ℝ^k is uncountable and P is the set of condensation points of E,
    then E \ P is at most countable. -/
theorem Rudin_exercise_2_27b {k : ℕ} (E : Set (Fin k → ℝ)) (hE : ¬ Set.Countable E) :
  Set.Countable (E \ condensation_points E) := by
  sorry
