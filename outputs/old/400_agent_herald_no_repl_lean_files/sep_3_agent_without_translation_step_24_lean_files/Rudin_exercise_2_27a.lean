import Mathlib

open Set

/-- The set of condensation points of E: those x such that every open ball around x
    meets E in an uncountable set (we express uncountable as ¬Countable). -/
def condensation_points (n : ℕ) (E : Set (EuclideanSpace ℝ (Fin n))) : Set (EuclideanSpace ℝ (Fin n)) :=
  { x : EuclideanSpace ℝ (Fin n) | ∀ r : ℝ, 0 < r → ¬ (Set.Countable ((Metric.ball x r) ∩ E)) }

/-- Rudin exercise: if E ⊆ ℝ^n is uncountable, then the set P of condensation points of E is perfect. -/
theorem rudin_exercise_2_27a (n : ℕ) {E : Set (EuclideanSpace ℝ (Fin n))} (hE : ¬ Set.Countable E) :
  Perfect (condensation_points n E) := by sorry
