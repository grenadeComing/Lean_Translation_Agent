import Mathlib

open Set Metric

/-- A point x is a condensation point of E if every open ball around x contains uncountably many points of E. -/
def IsCondensationPoint {k : ℕ} (E : Set (Fin k → ℝ)) (x : Fin k → ℝ) : Prop :=
  ∀ r : ℝ, 0 < r → ¬ (Metric.ball x r ∩ E).Countable

/-- Rudin exercise 2.27(b): if E ⊆ ℝ^k is uncountable and P is the set of condensation points of E,
    then at most countably many points of E are not in P. -/
theorem rudin_exercise_2_27b (k : ℕ) (E : Set (Fin k → ℝ)) (hE : ¬ E.Countable) :
  (E \ {x | IsCondensationPoint E x}).Countable := by sorry
